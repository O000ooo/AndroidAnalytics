#!/usr/bin/python
# -*- coding: utf-8 -*-
'''
Created on April 25, 2016
@author: Prajit Kumar Das

Usage: python syscallAnalysis.py\n

Syscall analysis code.
'''
import time
import sys
import os
import platform
from ConfigParser import SafeConfigParser
import subprocess as s
import processFile as pf
import runClustering as rc

def getApkFolderPath():
	parser = SafeConfigParser()
	parser.read('apkconfig.ini')

	path = parser.get('apkconfig', 'apkLocation')
	return path

def findAllFilesWithExtension(root, ext):
	files = os.listdir(root)
	apkDict = {}
	for file in files:
		if file.endswith(ext):
			apkDict[file] = os.path.join(root,file)
	return apkDict

def getOutputDirectoryPath(currentPath):
	osInfo = platform.system()
	if osInfo == 'Windows':
		outputDirectoryPath = currentPath + "\\out"
	elif osInfo == 'Linux' or 'Darwin':
		outputDirectoryPath = currentPath + "/out"
	else:
		print "The current OS is not supported at the moment. Try Windows, Linux or OS X."
		sys.exit(1)
	return outputDirectoryPath

def isBootAnimationComplete():
	time.sleep(30)
	cmd = 'adb shell getprop init.svc.bootanim'
	output = s.check_output(cmd.split()).split('\r\n')
	return output[0]

def executeTestScenarioForAndroidMonkey(pathToApk):
	while True:
		result = "emptyString"
		result = isBootAnimationComplete()
		print result
		if result == "":
			print "Something went wrong, probably can't start emulator for some reason! \nCheck if AVD exists or not. Or maybe something else is wrong. Check output of 'sudo kvm-ok'"
		elif result == "stopped":
			print "AVD is ready"
			# Executing the test scenario for Android monkey
			runExperimentsCmd = 'bash automatingStrace.sh '+pathToApk
			print runExperimentsCmd
			s.call(runExperimentsCmd.split())
			break;
		else:
			print "Still waiting for emulator to complete stage: "+result
			continue;

def runExperimentsOnEmulator(currentPath, apkFolderPath, outputDirectoryPath, apkDict):
	for key in apkDict.keys():
		# For each app execution start emulator for AVD nexus6, in wiped mode.
		# Make sure you have created the AVD first.
		emulatorStartCmd = 'bash startEmulator.sh'
		s.call(emulatorStartCmd.split())
		# Executing the test scenario for Android monkey for a particular app apk
		executeTestScenarioForAndroidMonkey(apkDict[key])
		# After finishing with one app's experiments, we kill the emulator, wipe it and start it again
		emulatorKillCmd = 'bash killEmulator.sh'
		s.call(emulatorKillCmd.split())
		# At this point we have to process the results and extract the features of an app, to run ml algorithms later.
		pf.extractFeatures(outputDirectoryPath,key)

	# After all the apps have been processed and features extracted, we may run the ML algos.
	rc.runClustering()

def doTask():
	currentPath = os.getcwd()
	apkFolderPath = getApkFolderPath()
	if '[' in apkFolderPath:
		print "Fix the config file!"
		return
	else:
		apkDict = findAllFilesWithExtension(apkFolderPath, '.apk')
	outputDirectoryPath = getOutputDirectoryPath(currentPath)
	runExperimentsOnEmulator(currentPath, apkFolderPath, outputDirectoryPath, apkDict)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python syscallAnalysis.py\n')
		sys.exit(1)

	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))