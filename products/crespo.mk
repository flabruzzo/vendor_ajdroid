# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/ajdroid/config/gsm.mk)

# Inherit some full-phone stuff
$(call inherit-product, vendor/ajdroid/config/common.mk)
$(call inherit-product, vendor/ajdroid/config/common_drm_phone.mk)

# Setup device specific product configuration.
PRODUCT_NAME := ajdroid_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=soju BUILD_FINGERPRINT="google/soju/crespo:4.1.2/JZO54K/eng.fabio:userdebug/test-keys" PRIVATE_BUILD_DESC="soju-userdebug 4.1.2 JZO54K eng.fabio test-keys"

PRODUCT_COPY_FILES += \
    vendor/ajdroid/prebuilt/bootanimation/bootanimation_480_800.zip:system/media/bootanimation.zip
