LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := MyLibName
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/Includes/

# Оставляем только гарантированно существующие файлы
LOCAL_SRC_FILES := Main.cpp \
                   KittyMemory/KittyArm64.cpp \
                   KittyMemory/KittyScanner.cpp \
                   KittyMemory/KittyMemory.cpp \
                   KittyMemory/KittyUtils.cpp \
                   KittyMemory/MemoryPatch.cpp \
                   KittyMemory/MemoryBackup.cpp

LOCAL_LDLIBS := -llog -landroid -lEGL -lGLESv2
include $(BUILD_SHARED_LIBRARY)

