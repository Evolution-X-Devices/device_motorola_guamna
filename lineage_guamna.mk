#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/guamna/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_guamna
PRODUCT_DEVICE := guamna
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g play (2021)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="guamna_retail-user 11 RZA31.Q2-146-14-22-2 8a7d1 release-keys" \
    BuildFingerprint=motorola/guamna_retail/guamna:11/RZA31.Q2-146-14-22-2/8a7d1:user/release-keys \
    DeviceProduct=guamna_retail
