#!/usr/bin/env bash
export FOX_BUILD_DEVICE="psyche"
export FOX_TARGET_DEVICES="psyche"
export FOX_AB_DEVICE=1
export OF_AB_DEVICE=1
export OF_VIRTUAL_AB_DEVICE=1
export FOX_RECOVERY_BOOT_PARTITION="/dev/block/bootdevice/by-name/boot"
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"

# Keep "Flash Current OrangeFox" and ramdisk patching enabled
export OF_NO_RELOAD_AFTER_DECRYPTION=1
export OF_USE_TWRP_SAR_DETECT=1
export OF_FLASHLIGHT_ENABLE=1
export OF_SCREEN_H=2400
export OF_STATUS_H=100
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48

# Maintainer / version tag (numbers only for patch version; FOX_VERSION is obsolete in R11.3+)
export OF_MAINTAINER="abedmatar7"
export FOX_MAINTAINER_PATCH_VERSION="1"
export FOX_VARIANT="psyche"
