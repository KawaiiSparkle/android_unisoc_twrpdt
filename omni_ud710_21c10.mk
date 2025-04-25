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

# Inherit from ud710_21c10 device
$(call inherit-product, device/sprd/ud710_21c10/device.mk)

PRODUCT_DEVICE := ud710_21c10
PRODUCT_NAME := omni_ud710_21c10
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := ud710_21c10_native
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ud710_21c10_c8pro-user 9 PPR1.180610.011 29209 release-keys"

BUILD_FINGERPRINT := SPRD/ud710_21c10_c8pro/ud710_21c10:9/PPR1.180610.011/07160919:user/release-keys
