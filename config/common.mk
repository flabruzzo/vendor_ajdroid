$(call inherit-product-if-exists, vendor/ajdroid/prebuilt/prebuilts.mk)

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/ajdroid/overlay/common

# T-Mobile theme engine
include vendor/ajdroid/config/themes_common.mk


# Use prebuilt su until fixed when built
PRODUCT_COPY_FILES += \
    vendor/ajdroid/prebuilt/common/xbin/su:system/xbin/su

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0

PRODUCT_COPY_FILES += \
    vendor/ajdroid/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \



# mod apps
#BUILD_PREBUILT += \
#    vendor/ajdroid/prebuilt/common/app/AwesomeBEATS.apk:system/app/AwesomeBEATS.apk \
#    vendor/ajdroid/prebuilt/common/app/GooglePlayMusic.apk:system/app/GooglePlayMusic.apk \
#    vendor/ajdroid/prebuilt/common/app/Nstools.apk:system/app/Nstools.apk \
#    vendor/ajdroid/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk 

PRODUCT_PACKAGES += \
     AwesomeBEATS \
     GooglePlayMusic \
     Nstools \
     Torch 

# init.d
PRODUCT_COPY_FILES += \
    vendor/ajdroid/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/ajdroid/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/ajdroid/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/ajdroid/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/ajdroid/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/ajdroid/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/ajdroid/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/ajdroid/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/ajdroid/prebuilt/common/etc/init.d/98mounts:system/etc/init.d/98mounts \
    vendor/ajdroid/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/ajdroid/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/ajdroid/prebuilt/common/bin/sysinit:system/bin/sysinit

# AweSomeBeats
PRODUCT_COPY_FILES += \
   vendor/ajdroid/prebuilt/common/bin/basimage_ibeats_solo.bin:system/bin/basimage_ibeats_solo.bin \
    vendor/ajdroid/prebuilt/common/bin/basimage_ibeats_solo_x.bin:system/bin/basimage_ibeats_solo_x.bin \
    vendor/ajdroid/prebuilt/common/bin/basimage_ibeats_x.bin:system/bin/basimage_ibeats_x.bin \
    vendor/ajdroid/prebuilt/common/bin/dynimage_ibeats.bin:system/bin/dynimage_ibeats.bin \
    vendor/ajdroid/prebuilt/common/bin/dynimage_ibeats_solo.bin:system/bin/dynimage_ibeats_solo.bin \
    vendor/ajdroid/prebuilt/common/bin/dynimage_ibeats_solo_x.bin:system/bin/dynimage_ibeats_solo_x.bin \
    vendor/ajdroid/prebuilt/common/bin/dynimage_ibeats_x.bin:system/bin/dynimage_ibeats_x.bin \
    vendor/ajdroid/prebuilt/common/bin/peqimage_ibeats.bin:system/bin/peqimage_ibeats.bin \
    vendor/ajdroid/prebuilt/common/bin/peqimage_ibeats_solo.bin:system/bin/peqimage_ibeats_solo.bin \
    vendor/ajdroid/prebuilt/common/bin/peqimage_ibeats_solo_x.bin:system/bin/peqimage_ibeats_solo_x.bin \
    vendor/ajdroid/prebuilt/common/bin/peqimage_ibeats_x.bin:system/bin/peqimage_ibeats_x.bin \
    vendor/ajdroid/prebuilt/common/bin/basimage_ibeats.bin:system/bin/basimage_ibeats.bin \
    vendor/ajdroid/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml\
    vendor/ajdroid/prebuilt/common/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/ajdroid/prebuilt/common/etc/basimage_gec.bin:system/etc/basimage_gec.bin \
    vendor/ajdroid/prebuilt/common/etc/basimage_gec_x.bin:system/etc/basimage_gec_x.bin \
    vendor/ajdroid/prebuilt/common/etc/basimage_ibeats.bin:system/etc/basimage_ibeats.bin \
    vendor/ajdroid/prebuilt/common/etc/basimage_ibeats_solo.bin:system/etc/basimage_ibeats_solo.bin \
    vendor/ajdroid/prebuilt/common/etc/basimage_ibeats_solo_x.bin:system/etc/basimage_ibeats_solo_x.bin \
    vendor/ajdroid/prebuilt/common/etc/basimage_ibeats_x.bin:system/etc/basimage_ibeats_x.bin \
    vendor/ajdroid/prebuilt/common/etc/dynimage_gec.bin:system/etc/dynimage_gec.bin \
    vendor/ajdroid/prebuilt/common/etc/dynimage_gec_x.bin:system/etc/dynimage_gec_x.bin \
    vendor/ajdroid/prebuilt/common/etc/dynimage_ibeats.bin:system/etc/dynimage_ibeats.bin \
    vendor/ajdroid/prebuilt/common/etc/dynimage_ibeats_solo.bin:system/etc/dynimage_ibeats_solo.bin \
    vendor/ajdroid/prebuilt/common/etc/dynimage_ibeats_solo_x.bin:system/etc/dynimage_ibeats_solo_x.bin \
    vendor/ajdroid/prebuilt/common/etc/dynimage_ibeats_x.bin:system/etc/dynimage_ibeats_x.bin \
    vendor/ajdroid/prebuilt/common/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    vendor/ajdroid/prebuilt/common/etc/peqimage_gec.bin:system/etc/peqimage_gec.bin \
    vendor/ajdroid/prebuilt/common/etc/peqimage_gec_x.bin:system/etc/peqimage_gec_x.bin \
    vendor/ajdroid/prebuilt/common/etc/peqimage_ibeats.bin:system/etc/peqimage_ibeats.bin \
    vendor/ajdroid/prebuilt/common/etc/peqimage_ibeats_solo.bin:system/etc/peqimage_ibeats_solo.bin \
    vendor/ajdroid/prebuilt/common/etc/peqimage_ibeats_solo_x.bin:system/etc/peqimage_ibeats_solo_x.bin \
    vendor/ajdroid/prebuilt/common/etc/peqimage_ibeats_x.bin:system/etc/peqimage_ibeats_x.bin \
    vendor/ajdroid/prebuilt/common/lib/soundfx/libaudiopreprocessing.so:system/lib/soundfx/libaudiopreprocessing.so \
    vendor/ajdroid/prebuilt/common/lib/soundfx/libbundlewrapper.so:system/lib/soundfx/libbundlewrapper.so \
    vendor/ajdroid/prebuilt/common/lib/soundfx/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so \
    vendor/ajdroid/prebuilt/common/lib/soundfx/libreverbwrapper.so:system/lib/soundfx/libreverbwrapper.so \
    vendor/ajdroid/prebuilt/common/lib/soundfx/libvisualizer.so:system/lib/soundfx/libvisualizer.so 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

#PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
