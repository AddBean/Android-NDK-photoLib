LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := PhotoNative

LOCAL_CFLAGS := -DANDROID_NDK \
                -DDISABLE_IMPORTGL
                
LOCAL_SRC_FILES :=photo_processing.c nanojpeg.c mem_utils.c bitmap.c bicubic_resize.c filter.c transform.c colour_space.c matrix.c blur.c 
LOCAL_LDLIBS    := -lm -llog

include $(BUILD_SHARED_LIBRARY)
