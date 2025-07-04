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

# Inherit from sa30pro device
$(call inherit-product, device/sprd/sa30pro/device.mk)

PRODUCT_DEVICE := sa30pro
PRODUCT_NAME := omni_sa30pro
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := sa30pro_native
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sa30pro-user 9 PPR1.180610.011 21411 release-keys"

BUILD_FINGERPRINT := SPRD/sa30pro/sa30pro:9/PPR1.180610.011/05291143:user/release-keys
