include theos/makefiles/common.mk

TWEAK_NAME = ColoredKnob
ColoredKnob_FILES = Tweak.xm
ColoredKnob_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk
