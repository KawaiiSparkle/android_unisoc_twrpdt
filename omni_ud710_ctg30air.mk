#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ud710_ctg30air device
$(call inherit-product, device/iflytek/ud710_ctg30air/device.mk)

PRODUCT_DEVICE := ud710_ctg30air
PRODUCT_NAME := omni_ud710_ctg30air
PRODUCT_BRAND := iFLYTEK
PRODUCT_MODEL := ud710_ctg30air_native
PRODUCT_MANUFACTURER := iflytek

PRODUCT_GMS_CLIENTID_BASE := android-iflytek

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ud710_ctg30air_native-user 9 PPR1.180610.011 19317 release-keys"

BUILD_FINGERPRINT := iFLYTEK/ud710_ctg30air_native/ud710_ctg30air:9/PPR1.180610.011/19317:user/release-keys
