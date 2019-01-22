# This file is generated by gyp; do not edit.

TOOLSET := host
TARGET := protobuf_full_do_not_use
DEFS_Debug := \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_PEPPER_THREADING' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=1' \
	'-DWTF_USE_DYNAMIC_ANNOTATIONS=1' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-pthread \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-Os \
	-g \
	-fomit-frame-pointer \
	-fdata-sections \
	-ffunction-sections

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated

INCS_Debug := \
	-Ithird_party/protobuf \
	-Ithird_party/protobuf/src

DEFS_Release := \
	'-D_FILE_OFFSET_BITS=64' \
	'-DUSE_LINUX_BREAKPAD' \
	'-DNO_TCMALLOC' \
	'-DDISABLE_NACL' \
	'-DCHROMIUM_BUILD' \
	'-DUSE_LIBJPEG_TURBO=1' \
	'-DENABLE_WEBRTC=1' \
	'-DUSE_PROPRIETARY_CODECS' \
	'-DENABLE_PEPPER_THREADING' \
	'-DENABLE_GPU=1' \
	'-DUSE_OPENSSL=1' \
	'-DENABLE_EGLIMAGE=1' \
	'-DUSE_SKIA=1' \
	'-DGOOGLE_PROTOBUF_NO_RTTI' \
	'-DGOOGLE_PROTOBUF_NO_STATIC_INITIALIZER' \
	'-DNDEBUG' \
	'-DNVALGRIND' \
	'-DDYNAMIC_ANNOTATIONS_ENABLED=0'

# Flags passed to all source files.
CFLAGS_Release := \
	-fstack-protector \
	--param=ssp-buffer-size=4 \
	-pthread \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-fvisibility=hidden \
	-pipe \
	-fPIC \
	-Wno-format \
	-Os \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fomit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-threadsafe-statics \
	-fvisibility-inlines-hidden \
	-Wno-deprecated

INCS_Release := \
	-Ithird_party/protobuf \
	-Ithird_party/protobuf/src

OBJS := \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/stubs/strutil.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/stubs/substitute.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/stubs/structurally_valid.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/descriptor.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/descriptor.pb.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/descriptor_database.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/dynamic_message.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/extension_set_heavy.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/generated_message_reflection.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/message.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/reflection_ops.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/service.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/text_format.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/wire_format.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/io/printer.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/io/tokenizer.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/io/zero_copy_stream_impl.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/compiler/importer.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/compiler/parser.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/stubs/atomicops_internals_x86_gcc.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/stubs/atomicops_internals_x86_msvc.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/unknown_field_set.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/stubs/common.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/stubs/once.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/extension_set.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/generated_message_util.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/message_lite.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/repeated_field.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/wire_format_lite.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/io/coded_stream.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/io/zero_copy_stream.o \
	$(obj).host/$(TARGET)/third_party/protobuf/src/google/protobuf/io/zero_copy_stream_impl_lite.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-pthread \
	-fPIC

LDFLAGS_Release := \
	-Wl,-z,now \
	-Wl,-z,relro \
	-pthread \
	-fPIC

LIBS := \
	

$(obj).host/third_party/protobuf/libprotobuf_full_do_not_use.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).host/third_party/protobuf/libprotobuf_full_do_not_use.a: LIBS := $(LIBS)
$(obj).host/third_party/protobuf/libprotobuf_full_do_not_use.a: TOOLSET := $(TOOLSET)
$(obj).host/third_party/protobuf/libprotobuf_full_do_not_use.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).host/third_party/protobuf/libprotobuf_full_do_not_use.a
# Add target alias
.PHONY: protobuf_full_do_not_use
protobuf_full_do_not_use: $(obj).host/third_party/protobuf/libprotobuf_full_do_not_use.a

# Add target alias to "all" target.
.PHONY: all
all: protobuf_full_do_not_use

