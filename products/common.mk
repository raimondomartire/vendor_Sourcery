PRODUCT_NAME := Sourcery
PODUCT_BRAND := Sourcery
PRODUCT_DEVICE := generic

SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/Sourcery/overlay/dictionaries

# Version information
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=JDQ39E-4.2.2_r1.2 BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=icsourcery

# standard sourcery packages 
PRODUCT_PACKAGES := \
    Camera \
    LatinImeDictionary \
    SoundRecorder \
    AppWidgetPicker \
    Development \
    MagicControl \
    MusicFX \
    Apollo \
    Torch \
    Stk \
    LockClock \
    Email2 \
    Exchange \
    GNexusParts \
    PerformanceControl \
    PermissionsManager
    

# Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \
    HoloSpiralWallpaper \
    MusicVisualization \
    NoiseField \
    MagicSmokeWallpapers \
    Galaxy4 \
    SourceryWallPapers \
    librs_jni 
   

#CM apps - Thanks to the great team over at CyanogenMod we have these awesome apps :)
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    LatinImeGoogle \
    audio_effects.conf \
    Superuser \
    su
    

# init.d support
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/Sourcery/prebuilt/common/etc/.root_browser:system/etc/.root_browser \
    vendor/Sourcery/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/Sourcery/prebuilt/common/bin/zipalign:system/bin/zipalign \
    vendor/Sourcery/prebuilt/common/etc/gps.conf:system/etc/gps.conf
    

# Propiortary applications
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
    vendor/Sourcery/prebuilt/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/Sourcery/prebuilt/common/app/MiFileExplorer_v3.0.4.apk:system/app/MiFileExplorer_v3.0.4.apk \
    vendor/Sourcery/prebuilt/common/app/SlideShowWidget.apk:system/app/SlideShowWidget.apk \
    vendor/Sourcery/prebuilt/common/app/SourceryTools.apk:system/app/SourceryTools.apk \
    vendor/Sourcery/prebuilt/common/app/DashClock.apk:system/app/DashClock.apk \
    vendor/Sourcery/prebuilt/common/app/BP_Dashclock_Extension.apk:system/app/BP_Dashclock_Extension.apk \
    vendor/Sourcery/prebuilt/common/app/Sourcery_Toolbox_Dashclock_Extension.apk:system/app/Sourcery_Toolbox_Dashclock_Extension.apk \
    vendor/Sourcery/prebuilt/common/app/SpareParts.apk:system/app/SpareParts.apk
  
# Sounds and bootani
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/media/audio/notifications/Sourcery.ogg:system/media/audio/notifications/Sourcery.ogg \
    vendor/Sourcery/prebuilt/common/media/audio/ringtones/freebird.ogg:system/media/audio/ringtones/freebird.ogg \
    vendor/Sourcery/prebuilt/common/media/audio/ringtones/DSB.ogg:system/media/audio/ringtones/DSB.ogg \
    vendor/Sourcery/prebuilt/toro/bootanimation.zip:system/media/bootanimation.zip

# libs
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/lib/libmotricity.so:system/lib/libmotricity.so \
    vendor/Sourcery/prebuilt/common/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/Sourcery/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so

# Google DNS servers and host 
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/Sourcery/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/Sourcery/prebuilt/common/etc/hosts:system/etc/hosts


# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/init.local.rc:root/init.local.rc \
    vendor/Sourcery/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/Sourcery/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Term binarry for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/Sourcery/proprietary/lib/armeabi/libjackpal-androidterm3.so:system/lib/libjackpal-androidterm3.so 
#vendor/Sourcery/proprietary/Term.apk:system/app/Term.apk \
# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/Sourcery/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/Sourcery/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
   
    
# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/Sourcery/prebuilt/common/xbin/backup:system/xbin/backup \
    vendor/Sourcery/prebuilt/common/xbin/bash:system/xbin/bash \
    vendor/Sourcery/prebuilt/common/xbin/btool:system/xbin/btool \
    vendor/Sourcery/prebuilt/common/xbin/drm1_func_test:system/xbin/drm1_func_test \
    vendor/Sourcery/prebuilt/common/xbin/gdb:system/xbin/gdb \
    vendor/Sourcery/prebuilt/common/xbin/gdbserver:system/xbin/gdbserver \
    vendor/Sourcery/prebuilt/common/xbin/market_history:system/xbin/market_history \
    vendor/Sourcery/prebuilt/common/xbin/nano:system/xbin/nano \
    vendor/Sourcery/prebuilt/common/xbin/rm_apks:system/xbin/rm_apks \
    vendor/Sourcery/prebuilt/common/xbin/run_backup:system/xbin/run_backup \
    vendor/Sourcery/prebuilt/common/xbin/run_restore:system/xbin/run_restore \
    vendor/Sourcery/prebuilt/common/xbin/ssmgrd:system/xbin/ssmgrd \
    vendor/Sourcery/prebuilt/common/xbin/sysro:system/xbin/sysro \
    vendor/Sourcery/prebuilt/common/xbin/sysrw:system/xbin/sysrw \
    vendor/Sourcery/prebuilt/common/xbin/zip:system/xbin/zip \
    vendor/Sourcery/prebuilt/common/xbin/zipalign:system/xbin/zipalign \
    vendor/Sourcery/prebuilt/common/xbin/zipalign_apks:system/xbin/zipalign_apks 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    ro.HOME_APP_ADJ=1 \
    debug.composition.type=gpu \
    debug.performance.tuning=1 \
    debug.sf.hw=1 \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    wifi.supplicant_scan_interval=180 \
    ro.config.ringtone=DSB.ogg \
    ro.config.notification_sound=Sourcery.ogg \
    ro.config.alarm_alert=Plutonium.ogg \
    ro.build.sourcery.version=6.0 \
    ro.com.android.dataroaming=false \
    ro.goo.version=600 \
    ro.goo.rom=JBSourcery

# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0



# tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ss

# rsync
PRODUCT_PACKAGES += \
    rsync












