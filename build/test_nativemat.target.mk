# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := test_nativemat
DEFS_Debug := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-m64 \
	-I/home/ec2-user/opencv/include/opencv \
	-I/home/ec2-user/opencv/include \
	-Wall \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug :=

INCS_Debug := \
	-I/home/ec2-user/.node-gyp/0.10.33/src \
	-I/home/ec2-user/.node-gyp/0.10.33/deps/uv/include \
	-I/home/ec2-user/.node-gyp/0.10.33/deps/v8/include \
	-I$(srcdir)/-I/home/ec2-user/opencv/include/opencv \
	-I$(srcdir)/-I/home/ec2-user/opencv/include \
	-I$(srcdir)/node_modules/nan \
	-I$(srcdir)/inc

DEFS_Release := \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-pthread \
	-m64 \
	-I/home/ec2-user/opencv/include/opencv \
	-I/home/ec2-user/opencv/include \
	-Wall \
	-O2 \
	-fno-strict-aliasing \
	-fno-tree-vrp \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release :=

INCS_Release := \
	-I/home/ec2-user/.node-gyp/0.10.33/src \
	-I/home/ec2-user/.node-gyp/0.10.33/deps/uv/include \
	-I/home/ec2-user/.node-gyp/0.10.33/deps/v8/include \
	-I$(srcdir)/-I/home/ec2-user/opencv/include/opencv \
	-I$(srcdir)/-I/home/ec2-user/opencv/include \
	-I$(srcdir)/node_modules/nan \
	-I$(srcdir)/inc

OBJS := \
	$(obj).target/$(TARGET)/test/nativemat.o

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
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	/home/ec2-user/opencv/lib/libopencv_contrib.a \
	/home/ec2-user/opencv/lib/libopencv_stitching.a \
	/home/ec2-user/opencv/lib/libopencv_nonfree.a \
	/home/ec2-user/opencv/lib/libopencv_superres.a \
	/home/ec2-user/opencv/lib/libopencv_ocl.a \
	/home/ec2-user/opencv/lib/libopencv_ts.a \
	/home/ec2-user/opencv/lib/libopencv_videostab.a \
	/home/ec2-user/opencv/lib/libopencv_gpu.a \
	/home/ec2-user/opencv/lib/libopencv_photo.a \
	/home/ec2-user/opencv/lib/libopencv_objdetect.a \
	/home/ec2-user/opencv/lib/libopencv_legacy.a \
	/home/ec2-user/opencv/lib/libopencv_video.a \
	/home/ec2-user/opencv/lib/libopencv_ml.a \
	/home/ec2-user/opencv/lib/libopencv_calib3d.a \
	/home/ec2-user/opencv/lib/libopencv_features2d.a \
	/home/ec2-user/opencv/lib/libopencv_highgui.a \
	/home/ec2-user/opencv/share/OpenCV/3rdparty/lib/libIlmImf.a \
	/home/ec2-user/opencv/share/OpenCV/3rdparty/lib/liblibjasper.a \
	/home/ec2-user/opencv/share/OpenCV/3rdparty/lib/liblibtiff.a \
	/home/ec2-user/opencv/share/OpenCV/3rdparty/lib/liblibpng.a \
	/home/ec2-user/opencv/share/OpenCV/3rdparty/lib/liblibjpeg.a \
	/home/ec2-user/opencv/lib/libopencv_imgproc.a \
	/home/ec2-user/opencv/lib/libopencv_flann.a \
	/home/ec2-user/opencv/lib/libopencv_core.a \
	/home/ec2-user/opencv/share/OpenCV/3rdparty/lib/libzlib.a \
	-lrt \
	-lpthread \
	-lm \
	-ldl \
	-lstdc++

$(obj).target/test_nativemat.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/test_nativemat.node: LIBS := $(LIBS)
$(obj).target/test_nativemat.node: TOOLSET := $(TOOLSET)
$(obj).target/test_nativemat.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/test_nativemat.node
# Add target alias
.PHONY: test_nativemat
test_nativemat: $(builddir)/test_nativemat.node

# Copy this to the executable output path.
$(builddir)/test_nativemat.node: TOOLSET := $(TOOLSET)
$(builddir)/test_nativemat.node: $(obj).target/test_nativemat.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/test_nativemat.node
# Short alias for building this executable.
.PHONY: test_nativemat.node
test_nativemat.node: $(obj).target/test_nativemat.node $(builddir)/test_nativemat.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/test_nativemat.node

