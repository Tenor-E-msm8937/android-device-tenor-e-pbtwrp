# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Encryption
PRODUCT_PACKAGES += \
    libcryptfs_hw

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e
PRODUCT_BRAND := Tenor
PRODUCT_MODEL := E
PRODUCT_MANUFACTURER := Tenor

PRODUCT_NAME := omni_e
