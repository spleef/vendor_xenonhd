# Inherit AOSP device configuration for trltespr.
$(call inherit-product, device/samsung/trltespr/cm.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Copy hammerhead specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk

# APNs
PRODUCT_COPY_FILES +=  \
	vendor/xenonhd/proprietary/common/etc/apns-conf-cdma.xml:system/etc/apns-conf.xml

## Device identifier. This must come after all inclusions
PRODUCT_NAME := xenonhd_trltespr
PRODUCT_DEVICE := trltespr
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-N910P
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=trltespr \
    BUILD_FINGERPRINT=samsung/trltespr/trltespr:4.4.4/KTU84P/N910PVPU1ANK2:user/release-keys \
    PRIVATE_BUILD_DESC="trltespr-user 4.4.4 KTU84P N910PVPU1ANK2 release-keys"
