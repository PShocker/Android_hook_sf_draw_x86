LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CPPFLAGS += -std=c++11

LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog -lEGL -lGLESv1_CM -lGLESv2
#LOCAL_ARM_MODE := arm
LOCAL_MODULE    := hello
MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/*.c)
LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/ \

include $(BUILD_SHARED_LIBRARY)

