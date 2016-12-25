USE `googleplaystore`;
--
-- Dumping data for table `broadcasts`
--

INSERT INTO `broadcasts` (`name`) VALUES
('android.intent.action.SCREEN_OFF'),
('android.intent.action.SCREEN_ON'),
('android.intent.action.USER_PRESENT'),
('android.intent.action.TIME_SET'),
('android.intent.action.TIME_TICK'),
('android.intent.action.TIMEZONE_CHANGED'),
('android.intent.action.DATE_CHANGED'),
('android.intent.action.PRE_BOOT_COMPLETED'),
('android.intent.action.BOOT_COMPLETED'),
('android.intent.action.PACKAGE_INSTALL'),
('android.intent.action.PACKAGE_ADDED'),
('android.intent.action.PACKAGE_REPLACED'),
('android.intent.action.MY_PACKAGE_REPLACED'),
('android.intent.action.PACKAGE_REMOVED'),
('android.intent.action.PACKAGE_FULLY_REMOVED'),
('android.intent.action.PACKAGE_CHANGED'),
('android.intent.action.PACKAGE_RESTARTED'),
('android.intent.action.PACKAGE_DATA_CLEARED'),
('android.intent.action.PACKAGE_FIRST_LAUNCH'),
('android.intent.action.PACKAGE_NEEDS_VERIFICATION'),
('android.intent.action.PACKAGE_VERIFIED'),
('android.intent.action.PACKAGES_SUSPENDED'),
('android.intent.action.PACKAGES_UNSUSPENDED'),
('android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED'),
('android.intent.action.UID_REMOVED'),
('android.intent.action.QUERY_PACKAGE_RESTART'),
('android.intent.action.CONFIGURATION_CHANGED'),
('android.intent.action.LOCALE_CHANGED'),
('android.intent.action.BATTERY_CHANGED'),
('android.intent.action.BATTERY_LOW'),
('android.intent.action.BATTERY_OKAY'),
('android.intent.action.ACTION_POWER_CONNECTED'),
('android.intent.action.ACTION_POWER_DISCONNECTED'),
('android.intent.action.ACTION_SHUTDOWN'),
('android.intent.action.CHARGING'),
('android.intent.action.DISCHARGING'),
('android.intent.action.DEVICE_STORAGE_LOW'),
('android.intent.action.DEVICE_STORAGE_OK'),
('android.intent.action.DEVICE_STORAGE_FULL'),
('android.intent.action.DEVICE_STORAGE_NOT_FULL'),
('android.intent.action.NEW_OUTGOING_CALL'),
('android.intent.action.REBOOT'),
('android.intent.action.DOCK_EVENT'),
('android.intent.action.THERMAL_EVENT'),
('android.intent.action.MASTER_CLEAR_NOTIFICATION'),
('android.intent.action.USER_ADDED'),
('android.intent.action.USER_REMOVED'),
('android.intent.action.USER_STARTING'),
('android.intent.action.USER_STARTED'),
('android.intent.action.USER_STOPPING'),
('android.intent.action.USER_STOPPED'),
('android.intent.action.USER_BACKGROUND'),
('android.intent.action.USER_FOREGROUND'),
('android.intent.action.USER_SWITCHED'),
('android.intent.action.USER_INITIALIZE'),
('android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION'),
('android.os.action.POWER_SAVE_MODE_CHANGED'),
('android.os.action.POWER_SAVE_MODE_CHANGING'),
('android.os.action.DEVICE_IDLE_MODE_CHANGED'),
('android.os.action.POWER_SAVE_WHITELIST_CHANGED'),
('android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED'),
('android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL'),
('android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED'),
('android.app.action.ENTER_CAR_MODE'),
('android.app.action.EXIT_CAR_MODE'),
('android.app.action.ENTER_DESK_MODE'),
('android.app.action.EXIT_DESK_MODE'),
('android.app.action.NEXT_ALARM_CLOCK_CHANGED'),
('android.app.action.BUGREPORT_SHARING_DECLINED'),
('android.app.action.BUGREPORT_FAILED'),
('android.app.action.BUGREPORT_SHARE'),
('android.appwidget.action.APPWIDGET_UPDATE_OPTIONS'),
('android.appwidget.action.APPWIDGET_DELETED'),
('android.appwidget.action.APPWIDGET_DISABLED'),
('android.appwidget.action.APPWIDGET_ENABLED'),
('android.appwidget.action.APPWIDGET_HOST_RESTORED'),
('android.appwidget.action.APPWIDGET_RESTORED'),
('android.os.action.SETTING_RESTORED'),
('android.app.backup.intent.RUN'),
('android.app.backup.intent.CLEAR'),
('android.app.backup.intent.INIT'),
('android.bluetooth.intent.DISCOVERABLE_TIMEOUT'),
('android.bluetooth.adapter.action.STATE_CHANGED'),
('android.bluetooth.adapter.action.SCAN_MODE_CHANGED'),
('android.bluetooth.adapter.action.DISCOVERY_STARTED'),
('android.bluetooth.adapter.action.DISCOVERY_FINISHED'),
('android.bluetooth.adapter.action.LOCAL_NAME_CHANGED'),
('android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.device.action.UUID'),
('android.bluetooth.device.action.MAS_INSTANCE'),
('android.bluetooth.device.action.ALIAS_CHANGED'),
('android.bluetooth.device.action.FOUND'),
('android.bluetooth.device.action.DISAPPEARED'),
('android.bluetooth.device.action.CLASS_CHANGED'),
('android.bluetooth.device.action.ACL_CONNECTED'),
('android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED'),
('android.bluetooth.device.action.ACL_DISCONNECTED'),
('android.bluetooth.device.action.NAME_CHANGED'),
('android.bluetooth.device.action.BOND_STATE_CHANGED'),
('android.bluetooth.device.action.NAME_FAILED'),
('android.bluetooth.device.action.PAIRING_REQUEST'),
('android.bluetooth.device.action.PAIRING_CANCEL'),
('android.bluetooth.device.action.CONNECTION_ACCESS_REPLY'),
('android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL'),
('android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST'),
('android.bluetooth.device.action.SDP_RECORD'),
('android.bluetooth.devicepicker.action.LAUNCH'),
('android.bluetooth.devicepicker.action.DEVICE_SELECTED'),
('android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED'),
('android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT'),
('android.bluetooth.headset.action.HF_INDICATORS_VALUE_CHANGED'),
('android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED'),
('android.bluetooth.headsetclient.profile.action.AG_EVENT'),
('android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED'),
('android.bluetooth.headsetclient.profile.action.RESULT'),
('android.bluetooth.headsetclient.profile.action.LAST_VTAG'),
('android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED'),
('android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.a2dp-sink.profile.action.PLAYING_STATE_CHANGED'),
('android.bluetooth.a2dp-sink.profile.action.AUDIO_CONFIG_CHANGED'),
('android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.input.profile.action.PROTOCOL_MODE_CHANGED'),
('android.bluetooth.input.profile.action.VIRTUAL_UNPLUG_STATUS'),
('android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.mapmce.profile.action.MESSAGE_RECEIVED'),
('android.bluetooth.mapmce.profile.action.MESSAGE_SENT_SUCCESSFULLY'),
('android.bluetooth.mapmce.profile.action.MESSAGE_DELIVERED_SUCCESSFULLY'),
('com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT'),
('com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY'),
('android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED'),
('android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED'),
('android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED'),
('android.btopp.intent.action.INCOMING_FILE_NOTIFICATION'),
('android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT'),
('android.btopp.intent.action.LIST'),
('android.btopp.intent.action.OPEN_OUTBOUND'),
('android.btopp.intent.action.HIDE_COMPLETE'),
('android.btopp.intent.action.CONFIRM'),
('android.btopp.intent.action.HIDE'),
('android.btopp.intent.action.RETRY'),
('android.btopp.intent.action.OPEN'),
('android.btopp.intent.action.OPEN_INBOUND'),
('android.btopp.intent.action.TRANSFER_COMPLETE'),
('android.btopp.intent.action.ACCEPT'),
('com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN'),
('com.android.bluetooth.pbap.authchall'),
('com.android.bluetooth.pbap.userconfirmtimeout'),
('com.android.bluetooth.pbap.authresponse'),
('com.android.bluetooth.pbap.authcancelled'),
('com.android.bluetooth.sap.USER_CONFIRM_TIMEOUT'),
('com.android.bluetooth.sap.action.DISCONNECT_ACTION'),
('android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED'),
('android.hardware.usb.action.USB_STATE'),
('android.hardware.usb.action.USB_PORT_CHANGED'),
('android.hardware.usb.action.USB_ACCESSORY_ATTACHED'),
('android.hardware.usb.action.USB_ACCESSORY_DETACHED'),
('android.hardware.usb.action.USB_DEVICE_ATTACHED'),
('android.hardware.usb.action.USB_DEVICE_DETACHED'),
('android.intent.action.HEADSET_PLUG'),
('android.media.action.HDMI_AUDIO_PLUG'),
('android.media.AUDIO_BECOMING_NOISY'),
('android.media.RINGER_MODE_CHANGED'),
('android.media.VIBRATE_SETTING_CHANGED'),
('android.media.VOLUME_CHANGED_ACTION'),
('android.media.MASTER_VOLUME_CHANGED_ACTION'),
('android.media.MASTER_MUTE_CHANGED_ACTION'),
('android.media.MASTER_MONO_CHANGED_ACTION'),
('android.media.SCO_AUDIO_STATE_CHANGED'),
('android.media.ACTION_SCO_AUDIO_STATE_UPDATED'),
('android.intent.action.MEDIA_REMOVED'),
('android.intent.action.MEDIA_UNMOUNTED'),
('android.intent.action.MEDIA_CHECKING'),
('android.intent.action.MEDIA_NOFS'),
('android.intent.action.MEDIA_MOUNTED'),
('android.intent.action.MEDIA_SHARED'),
('android.intent.action.MEDIA_UNSHARED'),
('android.intent.action.MEDIA_BAD_REMOVAL'),
('android.intent.action.MEDIA_UNMOUNTABLE'),
('android.intent.action.MEDIA_EJECT'),
('android.net.conn.CAPTIVE_PORTAL'),
('android.net.conn.CONNECTIVITY_CHANGE'),
('android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE'),
('android.net.conn.DATA_ACTIVITY_CHANGE'),
('android.net.conn.RESTRICT_BACKGROUND_CHANGED'),
('android.net.conn.BACKGROUND_DATA_SETTING_CHANGED'),
('android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED'),
('android.net.nsd.STATE_CHANGED'),
('android.nfc.action.ADAPTER_STATE_CHANGED'),
('android.nfc.action.TRANSACTION_DETECTED'),
('com.android.nfc.action.LLCP_UP'),
('com.android.nfc.action.LLCP_DOWN'),
('com.android.nfc.cardemulation.action.CLOSE_TAP_DIALOG'),
('com.android.nfc.handover.action.ALLOW_CONNECT'),
('com.android.nfc.handover.action.DENY_CONNECT'),
('com.android.nfc_extras.action.RF_FIELD_ON_DETECTED'),
('com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED'),
('com.android.nfc_extras.action.AID_SELECTED'),
('android.btopp.intent.action.WHITELIST_DEVICE'),
('android.btopp.intent.action.STOP_HANDOVER_TRANSFER'),
('android.nfc.handover.intent.action.HANDOVER_SEND'),
('android.nfc.handover.intent.action.HANDOVER_SEND_MULTIPLE'),
('android.intent.action.CLEAR_DNS_CACHE'),
('android.intent.action.PROXY_CHANGE'),
('android.os.UpdateLock.UPDATE_LOCK_CHANGED'),
('android.intent.action.DREAMING_STARTED'),
('android.intent.action.DREAMING_STOPPED'),
('android.intent.action.ANY_DATA_STATE'),
('com.android.server.WifiManager.action.START_SCAN'),
('com.android.server.WifiManager.action.START_PNO'),
('com.android.server.WifiManager.action.DELAYED_DRIVER_STOP'),
('com.android.server.WifiManager.action.DEVICE_IDLE'),
('com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED'),
('com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED'),
('com.android.server.usb.ACTION_OPEN_IN_APPS'),
('com.android.server.am.DELETE_DUMPHEAP'),
('com.android.server.net.action.SNOOZE_WARNING'),
('android.net.wifi.WIFI_STATE_CHANGED'),
('android.net.wifi.WIFI_AP_STATE_CHANGED'),
('android.net.wifi.WIFI_CREDENTIAL_CHANGED'),
('android.net.wifi.WIFI_SCAN_AVAILABLE'),
('android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED'),
('android.net.wifi.SCAN_RESULTS'),
('android.net.wifi.RSSI_CHANGED'),
('android.net.wifi.STATE_CHANGE'),
('android.net.wifi.LINK_CONFIGURATION_CHANGED'),
('android.net.wifi.CONFIGURED_NETWORKS_CHANGE'),
('android.net.wifi.supplicant.CONNECTION_CHANGE'),
('android.net.wifi.supplicant.STATE_CHANGE'),
('android.net.wifi.p2p.STATE_CHANGED'),
('android.net.wifi.p2p.DISCOVERY_STATE_CHANGE'),
('android.net.wifi.p2p.THIS_DEVICE_CHANGED'),
('android.net.wifi.p2p.PEERS_CHANGED'),
('android.net.wifi.p2p.CONNECTION_STATE_CHANGE'),
('android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED'),
('android.net.conn.TETHER_STATE_CHANGED'),
('android.net.conn.INET_CONDITION_ACTION'),
('android.net.conn.NETWORK_CONDITIONS_MEASURED'),
('android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED'),
('android.net.scoring.SCORE_NETWORKS'),
('android.net.scoring.SCORER_CHANGED'),
('android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE'),
('android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE'),
('android.intent.action.AIRPLANE_MODE'),
('android.intent.action.ADVANCED_SETTINGS'),
('android.intent.action.APPLICATION_RESTRICTIONS_CHANGED'),
('android.intent.action.ACTION_IDLE_MAINTENANCE_START'),
('android.intent.action.ACTION_IDLE_MAINTENANCE_END'),
('com.android.server.ACTION_TRIGGER_IDLE'),
('android.intent.action.HDMI_PLUGGED'),
('android.intent.action.PHONE_STATE'),
('android.intent.action.SUB_DEFAULT_CHANGED'),
('android.location.GPS_ENABLED_CHANGE'),
('android.location.PROVIDERS_CHANGED'),
('android.location.MODE_CHANGED'),
('android.location.GPS_FIX_CHANGE'),
('android.net.proxy.PAC_REFRESH'),
('android.telecom.action.DEFAULT_DIALER_CHANGED'),
('android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED'),
('android.intent.action.CONTENT_CHANGED'),
('android.provider.Telephony.MMS_DOWNLOADED'),
('com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION'),
('android.intent.action.PERMISSION_RESPONSE_RECEIVED'),
('android.intent.action.REQUEST_PERMISSION'),
('android.nfc.handover.intent.action.HANDOVER_STARTED'),
('android.nfc.handover.intent.action.TRANSFER_DONE'),
('android.nfc.handover.intent.action.TRANSFER_PROGRESS'),
('android.nfc.handover.intent.action.TRANSFER_DONE'),
('android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED'),
('android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED'),
('android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED'),
('android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED'),
('android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE'),
('android.intent.action.ACTION_SUBINFO_RECORD_UPDATED'),
('android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE'),
('android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED'),
('android.internal.policy.action.BURN_IN_PROTECTION'),
('android.app.action.SYSTEM_UPDATE_POLICY_CHANGED'),
('android.app.action.DEVICE_OWNER_CHANGED'),
('android.intent.action.ANR'),
('android.intent.action.CALL'),
('android.intent.action.CALL_PRIVILEGED'),
('android.intent.action.DROPBOX_ENTRY_ADDED'),
('android.intent.action.INPUT_METHOD_CHANGED'),
('android.intent.action.internal_sim_state_changed'),
('android.intent.action.LOCKED_BOOT_COMPLETED'),
('android.intent.action.PRECISE_CALL_STATE'),
('android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED'),
('android.intent.action.SUBSCRIPTION_PHONE_STATE'),
('android.intent.action.USER_INFO_CHANGED'),
('android.intent.action.USER_UNLOCKED'),
('android.intent.action.WALLPAPER_CHANGED'),
('android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED'),
('android.app.action.CHOOSE_PRIVATE_KEY_ALIAS'),
('android.app.action.DEVICE_ADMIN_DISABLED'),
('android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED'),
('android.app.action.DEVICE_ADMIN_ENABLED'),
('android.app.action.LOCK_TASK_ENTERING'),
('android.app.action.LOCK_TASK_EXITING'),
('android.app.action.NOTIFY_PENDING_SYSTEM_UPDATE'),
('android.app.action.ACTION_PASSWORD_CHANGED'),
('android.app.action.ACTION_PASSWORD_EXPIRING'),
('android.app.action.ACTION_PASSWORD_FAILED'),
('android.app.action.ACTION_PASSWORD_SUCCEEDED'),
('com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION'),
('android.intent.action.MANAGED_PROFILE_ADDED'),
('android.intent.action.MANAGED_PROFILE_UNLOCKED'),
('android.intent.action.MANAGED_PROFILE_REMOVED'),
('android.bluetooth.adapter.action.BLE_STATE_CHANGED'),
('com.android.bluetooth.map.USER_CONFIRM_TIMEOUT'),
('com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT'),
('com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_DELIVERY'),
('android.content.jobscheduler.JOB_DELAY_EXPIRED'),
('android.content.syncmanager.SYNC_ALARM'),
('android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION'),
('android.media.STREAM_DEVICES_CHANGED_ACTION'),
('android.media.STREAM_MUTE_CHANGED_ACTION'),
('android.net.sip.SIP_SERVICE_UP'),
('android.nfc.action.ADAPTER_STATE_CHANGED'),
('android.os.action.CHARGING'),
('android.os.action.DISCHARGING'),
('android.search.action.SEARCHABLES_CHANGED'),
('android.security.STORAGE_CHANGED'),
('android.telecom.action.PHONE_ACCOUNT_REGISTERED'),
('android.telecom.action.PHONE_ACCOUNT_UNREGISTERED'),
('android.telecom.action.SHOW_MISSED_CALLS_NOTIFICATION'),
('android.telephony.action.CARRIER_CONFIG_CHANGED'),
('com.android.bluetooth.btservice.action.ALARM_WAKEUP'),
('com.android.server.action.NETWORK_STATS_POLL'),
('com.android.server.action.NETWORK_STATS_UPDATED'),
('com.android.server.NetworkTimeUpdateService.action.POLL'),
('com.android.server.telecom.intent.action.CALLS_ADD_ENTRY'),
('com.android.settings.location.MODE_CHANGING'),
('ScheduleConditionProvider.EVALUATE'),
('EventConditionProvider.EVALUATE'),
('wifi_scan_available'),
('action.cne.started'),
('android.content.jobscheduler.JOB_DEADLINE_EXPIRED'),
('android.intent.action.ACTION_UNSOL_RESPONSE_OEM_HOOK_RAW'),
('android.net.conn.CONNECTIVITY_CHANGE_SUPL'),
('android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED'),
('android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED'),
('android.os.storage.action.VOLUME_STATE_CHANGED'),
('android.os.storage.action.DISK_SCANNED'),
('com.android.server.action.UPDATE_TWILIGHT_STATE'),
('com.android.server.action.RESET_TWILIGHT_AUTO'),
('com.android.server.device_idle.STEP_IDLE_STATE'),
('com.android.server.device_idle.STEP_LIGHT_IDLE_STATE'),
('com.android.server.Wifi.action.TOGGLE_PNO'),
('intent.action.ACTION_RF_BAND_INFO'),
('android.intent.action.MEDIA_RESOURCE_GRANTED'),
('android.app.action.SECURITY_LOGS_AVAILABLE'),
('android.app.action.INTERRUPTION_FILTER_CHANGED'),
('android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL'),
('android.app.action.NOTIFICATION_POLICY_CHANGED'),
('android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED'),
('android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED'),
('android.permission.GET_APP_GRANTED_URI_PERMISSIONS'),
('android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS'),
('android.intent.action.DYNAMIC_SENSOR_CHANGED'),
('android.intent.action.ACTION_RADIO_OFF'),
('android.accounts.LOGIN_ACCOUNTS_CHANGED'),
('com.android.sync.SYNC_CONN_STATUS_CHANGED'),
('com.android.phone.SIP_INCOMING_CALL'),
('com.android.phone.SIP_ADD_PHONE'),
('com.android.phone.SIP_REMOVE_PHONE'),
('com.android.phone.SIP_CALL_OPTION_CHANGED'),
('android.bluetooth.adapter.action.BLE_ACL_CONNECTED'),
('android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED'),
('android.bluetooth.input.profile.action.HANDSHAKE'),
('android.bluetooth.input.profile.action.REPORT'),
('android.intent.action.TWILIGHT_CHANGED'),
('com.android.server.fingerprint.ACTION_LOCKOUT_RESET'),
('android.net.wifi.PASSPOINT_ICON_RECEIVED'),
('com.android.server.notification.CountdownConditionProvider'),
('com.android.internal.location.ALARM_WAKEUP'),
('com.android.internal.location.ALARM_TIMEOUT'),
('android.intent.action.GLOBAL_BUTTON'),
('android.intent.action.MANAGED_PROFILE_AVAILABLE'),
('android.intent.action.MANAGED_PROFILE_UNAVAILABLE'),
('com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK'),
('com.android.server.retaildemo.ACTION_RESET_DEMO');

COMMIT;