# This file is generated by gyp; do not edit.

export builddir_name ?= ./webrtc/tools/out
.PHONY: all
all:
	$(MAKE) -C ../.. command_line_parser rgba_to_i420_converter video_quality_analysis frame_analyzer psnr_ssim_analyzer frame_editing_lib frame_editor tools_unittests
