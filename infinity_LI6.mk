#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/LI6/device.mk)

# Project Infinity X build flags.
INFINITY_BUILD_TYPE ?= UNOFFICIAL
INFINITY_MAINTAINER ?= knukima
WITH_GAPPS ?= true
TARGET_HAS_UDFPS ?= false
TARGET_INCLUDES_AUDIOFX ?= false
TARGET_SUPPORTS_QUICK_TAP ?= true

$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := infinity_LI6
PRODUCT_DEVICE := LI6
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LI6

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=LI6

# Time
INFINITY_VERSION_APPEND_TIME_OF_DAY := true
