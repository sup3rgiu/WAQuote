ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = WAQuote
WAQuote_FILES = Tweak.xm
WAQuote_FRAMEWORKS = UIKit
WAQuote_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 '-'"
