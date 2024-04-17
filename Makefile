FINALPACKAGE = 1
TARGET = iphone:14.5
export ARCHS = arm64 arm64e

    ftt_FRAMEWORKS = UIKit
    ftt_CODESIGN_FLAGS = -Sent.plist -Icom.ipadkid.ftt

include $(THEOS)/makefiles/common.mk

TOOL_NAME = ftt
ftt_FILES = main.m include/420.m
ftt_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tool.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
