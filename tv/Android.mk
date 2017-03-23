LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifeq ($(wildcard vendor/amlogic/tv/tvserver/Android.mk),vendor/amlogic/tv/tvserver/Android.mk)
$(info "have tvserver source code")
else
$(info "no tvserver source code, add binary lib")
LOCAL_MODULE_TAGS := optional
LOCAL_PREBUILT_LIBS := libtv.so
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_PREBUILT_LIBS := libtv_linker.so
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := tvserver
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_EXECUTABLES)
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

endif
