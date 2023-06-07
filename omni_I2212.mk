#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from I2212 device
$(call inherit-product, device/vivo/I2212/device.mk)

PRODUCT_DEVICE := I2212
PRODUCT_NAME := omni_I2212
PRODUCT_BRAND := iQOO
PRODUCT_MODEL := I2212
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kalama-user 13 TP1A.220624.014 eng.compil.20230509.201456 release-keys"

BUILD_FINGERPRINT := iQOO/I2212T/I2212:13/TP1A.220624.014/compiler05092014:user/release-keys
