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

# Inherit from sa30 device
$(call inherit-product, device/sprd/sa30/device.mk)

PRODUCT_DEVICE := sa30
PRODUCT_NAME := omni_sa30
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := sa30_native
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sa30-user 9 PPR1.180610.011 21600 release-keys"

BUILD_FINGERPRINT := SPRD/sa30/sa30:9/PPR1.180610.011/05310018:user/release-keys
