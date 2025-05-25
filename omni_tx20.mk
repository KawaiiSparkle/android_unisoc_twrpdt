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

# Inherit from tx20 device
$(call inherit-product, device/sprd/tx20/device.mk)

PRODUCT_DEVICE := tx20
PRODUCT_NAME := omni_tx20
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := tx20_native
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tx20_c10-user 9 PPR1.180610.011 13311 release-keys"

BUILD_FINGERPRINT := SPRD/tx20_c10/tx20:9/PPR1.180610.011/04021112:user/release-keys
