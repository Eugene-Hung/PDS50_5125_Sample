###########################################################
# Makefile generated by QMDE for CSRA68100                 
#                                                          
# Project: sink
# Configuration: Speaker
# Generated: Thu 17. Sep 15:11:03 2020
#                                                          
# WARNING: Do not edit this file. Any changes will be lost 
#          when the project is rebuilt.                    
#                                                          
###########################################################

BUILDOUTPUT_PATH=depend_Speaker_qcc512x_qcc302x
BUILD_ID=C:\qtil\ADK_QCC512X_QCC302X_WIN_6.3.2.24\tools/ubuild/maker/buildid/examples/timestamp.py
BUILD_TYPE=DEBUG
CHIP_TYPE=qcc512x_qcc302x
DBG_CORE=app/p1
DEFAULT_LIBS=usb_early_init
DEFS=__KALIMBA__ HAVE_32BIT_DATA_WIDTH INSTALL_HYDRA_LOG BLUELAB HYDRACORE ENABLE_AHI_USB_HOST ENABLE_BATTERY_OPERATION ENABLE_CHARGER_V2 ENABLE_USB_TYPE_C BLE_ENABLED_WHEN_OFF DEVICE_ID_PSKEY ENABLE_DISPLAY ENABLE_DISPLAY_MIDAS ENABLE_AUDIO_CLOCK ENABLE_AUDIO_TTP ENABLE_AVRCP ENABLE_BREDR_SC ENABLE_DORMANT_SUPPORT ENABLE_DOWNLOADABLE_CAPS GATT_IAS_CLIENT ENABLE_GAIA GATT_ENABLED GATT_ANCS_CLIENT GATT_BATTERY_SERVER GATT_IAS_SERVER GATT_BATTERY_SERVER_PEER GATT_IAS_SERVER GATT_LLS_SERVER GATT_TPS_SERVER GATT_BATTERY_SERVER_REMOTE GATT_BATTERY_CLIENT GATT_DIS_CLIENT GATT_SPC_CLIENT GATT_HID_CLIENT ENABLE_PBAP ENABLE_PEER_BATTERY_LEVEL ENABLE_PEER PEER_TWS PEER_AVRCP ENABLE_UPGRADE ENABLE_USB ENABLE_USB_AUDIO ENABLE_USB_HID_UPGRADE ENABLE_WATCHDOG ENABLE_WIRED GATT_GAIA_SERVER INCLUDE_A2DP_EXTRA_CODECS INCLUDE_APTX_ACL_SPRINT INCLUDE_APTX_ADAPTIVE INCLUDE_DSP THREE_WAY_CALLING ENABLE_USB_AUDIO_APP_STEREO_DESCRIPTORS ENABLE_USB_HUB_SUPPORT
EXTRA_WARNINGS=FALSE
FLASH_CONFIG=..\..\64Mbit_default_flash_config.py
HW_VARIANT=CF376_CF897
IDE_CONFIG=Speaker
IDE_PROJECT=sink
INCPATHS=..\..\..\..\installed_libs\include\profiles\default_qcc512x_qcc302x ..\..\..\..\installed_libs\include\firmware_qcc512x_qcc302x ..\..\..\..\installed_libs\include\firmware_qcc512x_qcc302x\app ..\..\..\..\installed_libs\include\standard
LIBPATHS=..\..\..\..\installed_libs\lib\default_qcc512x_qcc302x\native ..\..\..\..\installed_libs\lib\os\qcc512x_qcc302x
LIBS=a2dp audio_output audio_mixer audio_hardware audio_ports audio_processor_speed operators chain custom_operator file_list hfp audio audio_plugin_common avrcp connection bdaddr audio_voice_hfp audio_i2s_common audio_input_voice_prompts pblock pio_common power power_onchip power_onchip_adapter region sdp_parse gain_utils service vmal gatt gatt_device_info_server gatt_gap_server gatt_manager gatt_server gatt_client gatt_heart_rate_client gatt_transmit_power_server gatt_battery_server gatt_imm_alert_server gatt_imm_alert_client usb_device_class display display_plugin_midas upgrade byte_utils_hydra audio_input_a2dp audio_input_analogue audio_input_i2s audio_input_common audio_plugin_music_variants audio_plugin_voice_variants audio_input_usb tws_packetiser audio_input_tws gaia gatt_hid_client audio_config audio_music_processing ahi config_store ps_dynamic_config_store gatt_apple_notification_client gatt_device_info_client  gatt_device_info_server gatt_scan_params_client gatt_link_loss_server gatt_battery_client gatt_heart_rate_server obex md5 pbapc audio_input_spdif rtime packetiser_helper system_clock tws_synchronised_control audio_instance hid_upgrade hid audio_plugin_forwarding audio_output_tws audio_voice_common audio_voice_usb resource_manager rwcp_server anc audio_voice_assistant_low_power local_device spp_common spps sppc transport_adaptation transport_manager voice_assistant_audio_manager protobuf gatt_fast_pair_server audio_anc_tuning
OUTDIR=C:\Users\278632\Desktop\BT_SPK_5125\Eugene_sample\apps\applications\sink\qcc512x_qcc302x\common
OUTPUT=sink
OUTPUT_TYPE=EXECUTABLE
PRESERVED_LIBS=qcc512x_qcc302x
PRIVATE_DEFS=
PRIVATE_INCPATHS=
STRIP_SYMBOLS=FALSE
SW_VARIANT=Speaker_with_TWS


INPUTS=\
    ..\..\User\eugene_i2c_bus.c \
    ..\..\User\eugene_i2c_bus.h \
    ..\..\User\eugene_main.c \
    ..\..\User\eugene_main.h \
    ..\..\User\eugene_pio.c \
    ..\..\User\eugene_pio.h \
    ..\..\User\eugene_print.h \
    ..\..\ahi_host_trb.c \
    ..\..\ahi_host_trb.h \
    ..\..\ahi_host_usb.c \
    ..\..\ahi_host_usb.h \
    ..\..\ahi_test.h \
    ..\..\main.c \
    ..\..\main.h \
    ..\..\sink_a2dp.c \
    ..\..\sink_a2dp.h \
    ..\..\sink_a2dp_aptx_adaptive.c \
    ..\..\sink_a2dp_aptx_adaptive.h \
    ..\..\sink_a2dp_capabilities.c \
    ..\..\sink_a2dp_capabilities.h \
    ..\..\sink_accessory.c \
    ..\..\sink_accessory.h \
    ..\..\sink_ahi.c \
    ..\..\sink_ahi.h \
    ..\..\sink_ama.c \
    ..\..\sink_ama.h \
    ..\..\sink_anc.c \
    ..\..\sink_anc.h \
    ..\..\sink_at_commands.c \
    ..\..\sink_at_commands.h \
    ..\..\sink_audio.c \
    ..\..\sink_audio.h \
    ..\..\sink_audio_clock.c \
    ..\..\sink_audio_indication.c \
    ..\..\sink_audio_indication.h \
    ..\..\sink_audio_prompts.c \
    ..\..\sink_audio_prompts.h \
    ..\..\sink_audio_routing.c \
    ..\..\sink_audio_routing.h \
    ..\..\sink_audio_ttp.c \
    ..\..\sink_audio_ttp.h \
    ..\..\sink_auth.c \
    ..\..\sink_auth.h \
    ..\..\sink_auto_power_off.c \
    ..\..\sink_auto_power_off.h \
    ..\..\sink_avrcp.c \
    ..\..\sink_avrcp.h \
    ..\..\sink_avrcp_browsing.c \
    ..\..\sink_avrcp_browsing.h \
    ..\..\sink_avrcp_browsing_channel.c \
    ..\..\sink_avrcp_browsing_channel.h \
    ..\..\sink_avrcp_qualification.c \
    ..\..\sink_avrcp_qualification.h \
    ..\..\sink_ba.c \
    ..\..\sink_ba.h \
    ..\..\sink_ba_ble_gap.c \
    ..\..\sink_ba_ble_gap.h \
    ..\..\sink_ba_broadcaster.c \
    ..\..\sink_ba_broadcaster.h \
    ..\..\sink_ba_broadcaster_association.c \
    ..\..\sink_ba_broadcaster_association.h \
    ..\..\sink_ba_broadcaster_encryption.c \
    ..\..\sink_ba_broadcaster_encryption.h \
    ..\..\sink_ba_broadcaster_packetiser.c \
    ..\..\sink_ba_broadcaster_packetiser.h \
    ..\..\sink_ba_broadcaster_scm.c \
    ..\..\sink_ba_broadcaster_scm.h \
    ..\..\sink_ba_common.h \
    ..\..\sink_ba_receiver.c \
    ..\..\sink_ba_receiver.h \
    ..\..\sink_ble.c \
    ..\..\sink_ble.h \
    ..\..\sink_ble_advertising.c \
    ..\..\sink_ble_advertising.h \
    ..\..\sink_ble_gap.c \
    ..\..\sink_ble_gap.h \
    ..\..\sink_ble_sc.c \
    ..\..\sink_ble_sc.h \
    ..\..\sink_ble_scanning.c \
    ..\..\sink_ble_scanning.h \
    ..\..\sink_buttonmanager.c \
    ..\..\sink_buttonmanager.h \
    ..\..\sink_buttons.c \
    ..\..\sink_buttons.h \
    ..\..\sink_callmanager.c \
    ..\..\sink_callmanager.h \
    ..\..\sink_config.c \
    ..\..\sink_config.h \
    ..\..\sink_configmanager.c \
    ..\..\sink_configmanager.h \
    ..\..\sink_csr_features.c \
    ..\..\sink_csr_features.h \
    ..\..\sink_debug.h \
    ..\..\sink_development.h \
    ..\..\sink_device_id.c \
    ..\..\sink_device_id.h \
    ..\..\sink_devicemanager.c \
    ..\..\sink_devicemanager.h \
    ..\..\sink_dfu_ps.c \
    ..\..\sink_dfu_ps.h \
    ..\..\sink_display.c \
    ..\..\sink_display.h \
    ..\..\sink_dormant.c \
    ..\..\sink_dormant.h \
    ..\..\sink_downloadable_caps.c \
    ..\..\sink_downloadable_caps.h \
    ..\..\sink_dut.c \
    ..\..\sink_dut.h \
    ..\..\sink_enum.c \
    ..\..\sink_event_queue.c \
    ..\..\sink_event_queue.h \
    ..\..\sink_events.h \
    ..\..\sink_fast_pair.c \
    ..\..\sink_fast_pair.h \
    ..\..\sink_fm.h \
    ..\..\sink_gaia.c \
    ..\..\sink_gaia.h \
    ..\..\sink_gatt.c \
    ..\..\sink_gatt.h \
    ..\..\sink_gatt_client.c \
    ..\..\sink_gatt_client.h \
    ..\..\sink_gatt_client_ancs.c \
    ..\..\sink_gatt_client_ancs.h \
    ..\..\sink_gatt_client_ba.c \
    ..\..\sink_gatt_client_ba.h \
    ..\..\sink_gatt_client_battery.c \
    ..\..\sink_gatt_client_battery.h \
    ..\..\sink_gatt_client_dis.c \
    ..\..\sink_gatt_client_dis.h \
    ..\..\sink_gatt_client_gatt.c \
    ..\..\sink_gatt_client_gatt.h \
    ..\..\sink_gatt_client_hid.c \
    ..\..\sink_gatt_client_hid.h \
    ..\..\sink_gatt_client_hrs.c \
    ..\..\sink_gatt_client_hrs.h \
    ..\..\sink_gatt_client_ias.c \
    ..\..\sink_gatt_client_ias.h \
    ..\..\sink_gatt_client_spc.c \
    ..\..\sink_gatt_client_spc.h \
    ..\..\sink_gatt_common.c \
    ..\..\sink_gatt_common.h \
    ..\..\sink_gatt_db.db \
    ..\..\sink_gatt_device.h \
    ..\..\sink_gatt_hid_qualification.c \
    ..\..\sink_gatt_hid_qualification.h \
    ..\..\sink_gatt_hid_remote_control.c \
    ..\..\sink_gatt_hid_remote_control.h \
    ..\..\sink_gatt_init.c \
    ..\..\sink_gatt_init.h \
    ..\..\sink_gatt_manager.c \
    ..\..\sink_gatt_manager.h \
    ..\..\sink_gatt_server.c \
    ..\..\sink_gatt_server.h \
    ..\..\sink_gatt_server_ama.c \
    ..\..\sink_gatt_server_ama.h \
    ..\..\sink_gatt_server_ba.c \
    ..\..\sink_gatt_server_ba.h \
    ..\..\sink_gatt_server_battery.c \
    ..\..\sink_gatt_server_battery.h \
    ..\..\sink_gatt_server_dis.c \
    ..\..\sink_gatt_server_dis.h \
    ..\..\sink_gatt_server_fps.c \
    ..\..\sink_gatt_server_fps.h \
    ..\..\sink_gatt_server_gap.c \
    ..\..\sink_gatt_server_gap.h \
    ..\..\sink_gatt_server_gatt.c \
    ..\..\sink_gatt_server_gatt.h \
    ..\..\sink_gatt_server_hrs.c \
    ..\..\sink_gatt_server_hrs.h \
    ..\..\sink_gatt_server_ias.c \
    ..\..\sink_gatt_server_ias.h \
    ..\..\sink_gatt_server_lls.c \
    ..\..\sink_gatt_server_lls.h \
    ..\..\sink_gatt_server_logging.c \
    ..\..\sink_gatt_server_logging.h \
    ..\..\sink_gatt_server_rscs.c \
    ..\..\sink_gatt_server_rscs.h \
    ..\..\sink_gatt_server_tps.c \
    ..\..\sink_gatt_server_tps.h \
    ..\..\sink_hf_indicators.c \
    ..\..\sink_hf_indicators.h \
    ..\..\sink_hfp_data.c \
    ..\..\sink_hfp_data.h \
    ..\..\sink_hid.c \
    ..\..\sink_hid.h \
    ..\..\sink_hid_device_service_record.h \
    ..\..\sink_indicators.c \
    ..\..\sink_indicators.h \
    ..\..\sink_init.c \
    ..\..\sink_init.h \
    ..\..\sink_input_manager.c \
    ..\..\sink_input_manager.h \
    ..\..\sink_inquiry.c \
    ..\..\sink_inquiry.h \
    ..\..\sink_ir_remote_control.h \
    ..\..\sink_led_err.h \
    ..\..\sink_led_manager.c \
    ..\..\sink_led_manager.h \
    ..\..\sink_leddata.h \
    ..\..\sink_leds.c \
    ..\..\sink_leds.h \
    ..\..\sink_link_policy.c \
    ..\..\sink_link_policy.h \
    ..\..\sink_linkloss.c \
    ..\..\sink_linkloss.h \
    ..\..\sink_main_task.c \
    ..\..\sink_main_task.h \
    ..\..\sink_malloc_debug.c \
    ..\..\sink_malloc_debug.h \
    ..\..\sink_mapc.c \
    ..\..\sink_mapc.h \
    ..\..\sink_multi_channel.c \
    ..\..\sink_multi_channel.h \
    ..\..\sink_multipoint.c \
    ..\..\sink_multipoint.h \
    ..\..\sink_music_processing.c \
    ..\..\sink_music_processing.h \
    ..\..\sink_nfc.c \
    ..\..\sink_nfc.h \
    ..\..\sink_partymode.c \
    ..\..\sink_partymode.h \
    ..\..\sink_pbap.c \
    ..\..\sink_pbap.h \
    ..\..\sink_peer.c \
    ..\..\sink_peer.h \
    ..\..\sink_peer_qualification.c \
    ..\..\sink_peer_qualification.h \
    ..\..\sink_pio.c \
    ..\..\sink_pio.h \
    ..\..\sink_pio_debounce.c \
    ..\..\sink_pio_debounce.h \
    ..\..\sink_powermanager.c \
    ..\..\sink_powermanager.h \
    ..\..\sink_private_data.c \
    ..\..\sink_private_data.h \
    ..\..\sink_sbc.c \
    ..\..\sink_sbc.h \
    ..\..\sink_sc.c \
    ..\..\sink_sc.h \
    ..\..\sink_scan.c \
    ..\..\sink_scan.h \
    ..\..\sink_slc.c \
    ..\..\sink_slc.h \
    ..\..\sink_speech_recognition.c \
    ..\..\sink_speech_recognition.h \
    ..\..\sink_sport_health.c \
    ..\..\sink_sport_health.h \
    ..\..\sink_sport_health_sm.c \
    ..\..\sink_sport_health_sm.h \
    ..\..\sink_spp_qualification.c \
    ..\..\sink_spp_qualification.h \
    ..\..\sink_statemanager.c \
    ..\..\sink_statemanager.h \
    ..\..\sink_states.h \
    ..\..\sink_swat.h \
    ..\..\sink_tap_ui.c \
    ..\..\sink_tap_ui.h \
    ..\..\sink_tones.c \
    ..\..\sink_tones.h \
    ..\..\sink_upgrade.c \
    ..\..\sink_upgrade.h \
    ..\..\sink_usb.c \
    ..\..\sink_usb.h \
    ..\..\sink_usb_debug.c \
    ..\..\sink_usb_debug.h \
    ..\..\sink_usb_descriptors.h \
    ..\..\sink_utils.c \
    ..\..\sink_utils.h \
    ..\..\sink_va_if.c \
    ..\..\sink_va_if.h \
    ..\..\sink_volume.c \
    ..\..\sink_volume.h \
    ..\..\sink_watchdog.c \
    ..\..\sink_watchdog.h \
    ..\..\sink_wired.c \
    ..\..\sink_wired.h \
    build_id_str.c \
$(DBS)

-include sink.mak
# Check required variables have been defined
ifdef MAKEFILE_RULES_DIR
  $(info Using $(MAKEFILE_RULES_DIR)/Makefile.rules)
  include $(MAKEFILE_RULES_DIR)/Makefile.rules
else
  ifdef SDK
    include $(SDK)/Makefile.rules
  else
    $(error Variable SDK has not been defined. It should be set to the location of the Devkit tools folder.)
  endif
endif