# This file is generated by gyp; do not edit.

export builddir_name ?= ./webrtc/modules/out
.PHONY: all
all:
	$(MAKE) -C ../.. G722 G722Test G711 g711_test webrtc_opus audio_processing_offsets audioproc_debug_proto PCM16B RTPjitter audioproc_unittest_proto bitrate_controller udp_transport webrtc_i420 unpack_aecdump paced_sender remote_bitrate_estimator iSAC isac_neon iSACSwitchSampRateTest CNG audio_processing_neon iSACAPITest iSACFix video_codecs_test_framework webrtc_video_coding NetEq neteq_unittest_tools iSACFixtest iLBC NetEq4 udp_transport_unittests video_coding_unittests rtp_rtcp iSACtest NetEqTestTools NetEqRTPplay remote_bitrate_estimator_unittests audio_processing test_packet_masks_metrics audioproc audio_device bitrate_controller_unittests audio_decoder_unittests audioproc_unittest video_coding_integrationtests video_quality_measurement NetEq4TestTools paced_sender_unittests iLBCtest neteq_unittests test_fec rtp_rtcp_unittests audio_coding_module neteq_rtpplay RTPcat RTPtimeshift RTPchange rtp_to_text delay_test RTPencode RTPanalyze audio_coding_unittests webrtc_utility audio_coding_module_test video_processing video_processing_unittests webrtc_utility_unittests video_render_module audio_device_test_func media_file media_file_unittests video_render_module_test video_capture_module audio_conference_mixer audio_device_test_api video_coding_test video_capture_module_test
