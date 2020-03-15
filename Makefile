THEOS_DEVICE_IP = 192.168.1.1

ARCHS = arm64
DEBUG = 0

INSTALL_TARGET_PROCESSES = Zing MP3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ZingVip

ZingVip_FILES = Tweak.xm
ZingVip_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
