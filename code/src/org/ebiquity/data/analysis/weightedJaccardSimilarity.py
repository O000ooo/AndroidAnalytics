#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on August 18, 2015
@author: Prajit
Usage: python weightedJaccardSimilarity.py selectionType
'''
import sys
import time
import databaseHandler
import json
import collections

idfPermissionsDictJSONFile = "idfPermissionsDict.json"

def writeToFile(idfPermissionsDict):    
    with open(idfPermissionsDictJSONFile, 'w') as f:
        print "Writing 'Inverse Document Frequency' of apps requesting a permission to a file"
        f.write(json.dumps(idfPermissionsDict))

def jaccardSimOperation(app1, app2, permissionsSet, permissionsDict, idfPermissionsDictJSONRead):
    if app1 != app2:
        app1PermSet = set(permissionsDict[app1])
        app2PermSet = set(permissionsDict[app2])

        s2 = time.time()
        intersectionSet = app1PermSet.intersection(app2PermSet)
        unionSet = app1PermSet.union(app2PermSet)
        print str((time.time()-s2)*1000000)
        
        intersectionSumOfPermissionWeights = 0
        unionSumOfPermissionWeights = 0
        
        s3 = time.time()
        for perm in intersectionSet:
            if perm in idfPermissionsDictJSONRead:
                intersectionSumOfPermissionWeights = intersectionSumOfPermissionWeights + idfPermissionsDictJSONRead[perm]
        print str((time.time()-s3)*1000000)
    
        s4 = time.time()
        for perm in unionSet:
            if perm in idfPermissionsDictJSONRead:
                unionSumOfPermissionWeights = unionSumOfPermissionWeights + idfPermissionsDictJSONRead[perm]
        print str((time.time()-s4)*1000000)
#                 if app1 == 'com.facebook.katana' and app2 == 'com.instagram.android':
#                     print "fb and insta:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
#                 elif app1 == 'com.ubercab' and app2 == 'com.ubercab.driver':
#                     print "uber and uber driver:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
#                 elif app1 == 'com.ubercab' and app2 == 'com.facebook.katana':
#                     print "uber and facebook:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
#                 elif app1 == 'com.surpax.ledflashlight.panel' and app2 == 'com.facebook.katana':
#                     print "flash light and fb:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
#                 elif app1 == 'com.zynga.wwf2.free' and app2 == 'com.imangi.templerun':
#                     print "zynga and templerun:", numerator/denominator
#                     print sorted(permissionsDict[app1])
#                     print sorted(permissionsDict[app2])
#                     print intersectionSet
#                     print app1PermSet.difference(app2PermSet)
#                     print app2PermSet.difference(app1PermSet)
    return intersectionSumOfPermissionWeights/unionSumOfPermissionWeights

def computeJaccardMatrix(permissionsSet, permissionsDict):    
    numberOfApps = len(permissionsDict.keys())
    
    appVector = permissionsDict.keys()

    # Creates a list containing 5 lists initialized to 0
    appMatrix = [[0 for x in range(numberOfApps)] for x in range(numberOfApps)]
    
    with open(idfPermissionsDictJSONFile, 'r') as f:
        idfPermissionsDictJSONRead = json.loads(f.read())
    
    for app1 in appVector:
        for app2 in appVector:
            appMatrix[appVector.index(app1)][appVector.index(app2)] = jaccardSimOperation(app1, app2, permissionsSet, permissionsDict, idfPermissionsDictJSONRead)
    
    print "computeJaccardMatrix complete"
    return appMatrix, appVector

def getCountOfAppPermissionsCollected(dbHandle):
    sqlStatement = "SELECT * FROM `count_of_app_perm_collected_view`;"
    cursor = dbHandle.cursor()
    try:
        print "Extracting count of app permissions collected"
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
                countOfApps = row[0]
    except:
        print "Unexpected error in getCountOfAppPermissionsCollected:", sys.exc_info()[0]
        raise
    return float(countOfApps)
 
def getAppCountRequestingPermissions(dbHandle):
    sqlStatement = "SELECT * FROM `perm_app_medical_cat_count_view`;"
    countOfApps = getCountOfAppPermissionsCollected(dbHandle)
    cursor = dbHandle.cursor()
    idfPermissionsDict = {'countOfApps':countOfApps}
    try:
        print "Extracting app count requesting given permission"
        cursor.execute(sqlStatement)
        if cursor.rowcount > 0:
            queryOutput = cursor.fetchall()
            for row in queryOutput:
#                 print row[0],row[1]
                '''
                Computing an "Inverse Document Frequency" of apps requesting a permission. 
                This will tell us if a particular permission is unique and rare or a popular one.
                If an app asks for permissions which are rare then they are outliers with respect to commonly asked permissions.
                This warrants a further look from our perspective.
                '''
                idfPermissionsDict[str(row[2])] = countOfApps/row[0] # We are using permission ids to store less data
                #print idfPermissionsDict[str(row[2])]
    except:
        print "Unexpected error in getAppCountRequestingPermissions:", sys.exc_info()[0]
        raise

    sortedDict = collections.OrderedDict(sorted(idfPermissionsDict.items()))
    #print sortedDict
    writeToFile(sortedDict)
    print "Completed the IDF computation process"
#     return sortedDict
 
def main(argv):
    if len(sys.argv) != 1:
        sys.stderr.write('Usage: python weightedJaccardSimilarity.py\n')
        sys.exit(1)
 
    dbHandle = databaseHandler.dbConnectionCheck() #DB Open
 
    startTime = time.time()
    #Compute Jaccard Similarity
    getAppCountRequestingPermissions(dbHandle)
    executionTime = str((time.time()-startTime)*1000)
    print "Execution time was: "+executionTime+" ms"
     
    dbHandle.close() #DB Close
 
if __name__ == "__main__":
    sys.exit(main(sys.argv))