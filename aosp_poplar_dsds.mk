$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/sony/poplar_dsds/device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

### Pixel Experience stuff & bootanimation
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

### LINEAGE
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_poplar_dsds
PRODUCT_DEVICE := poplar_dsds
PRODUCT_BRAND := Sony
PRODUCT_MODEL := G8342
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=poplar_dsds \
    PRIVATE_BUILD_DESC="G8342-user 8 47.1.A.12.179 1909673090 release-keys"

BUILD_FINGERPRINT := Sony/G8342/G8342:8.0.0/47.1.A.12.179/1909673090:user/release-keys
