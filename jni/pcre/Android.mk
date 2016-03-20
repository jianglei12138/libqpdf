
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := static/$(TARGET_ARCH_ABI)/libpcre.a
LOCAL_MODULE:= pcre
include $(PREBUILT_STATIC_LIBRARY)
