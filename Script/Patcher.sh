#!/sbin/sh
#Intelligent installation script for XTREMEMusic, made by androidexpert35
## Starting installation by checking devices.
if [ "`grep ro.xtrememusic.is_active=true /system/build.prop`" ]; 
then
   :
elif [ -e /system/framework/com.sony.device.jar ]; 
then
   cp -f /tmp/Supported/lib/lib_Samsung_Resampler.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_3DPosition_ver107.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_3DRendering_ver102.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_AlbumArt_ver104.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_play_plus_hal_ver126c.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_play_plus_ver127a.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_SRC20k_ver100.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_SRC192_ver205.so /system/lib/
   cp -f /tmp/Supported/lib/lib_soundaliveresampler.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundBooster_hal_ver700.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundBooster_ver700.so /system/lib/
   cp -f /tmp/Supported/lib/libaudiosa.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungDiamondVoiceExt.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungDiamondVoiceExtSwb.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungeffect.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungpowersound.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungSoundbooster_plus.so /system/lib/
   cp -f /tmp/Supported/lib/libSoundAlive_VSP_ver315b_arm.so /system/lib/
   cp -f /tmp/Supported/lib/liblgaudioutils.so /system/lib/
   cp -f /tmp/Supported/lib/liblgresampler.so /system/lib/
   cp -f /tmp/Supported/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/huawei/lib/* /system/lib/
   cp -f /tmp/Supported/framework/* /system/framework/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/Supported/etc/default.xml /system/customize/ACC/
elif [ "`grep ro.product.brand=htc /system/build.prop`" ]; 
then
   cp -f /tmp/Supported/lib/lib_Samsung_Resampler.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_3DPosition_ver107.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_3DRendering_ver102.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_AlbumArt_ver104.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_play_plus_hal_ver126c.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_play_plus_ver127a.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_SRC20k_ver100.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_SRC192_ver205.so /system/lib/
   cp -f /tmp/Supported/lib/lib_soundaliveresampler.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundBooster_hal_ver700.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundBooster_ver700.so /system/lib/
   cp -f /tmp/Supported/lib/libaudiosa.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungDiamondVoiceExt.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungDiamondVoiceExtSwb.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungeffect.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungpowersound.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungSoundbooster_plus.so /system/lib/
   cp -f /tmp/Supported/lib/libSoundAlive_VSP_ver315b_arm.so /system/lib/
   cp -f /tmp/Supported/lib/liblgaudioutils.so /system/lib/
   cp -f /tmp/Supported/lib/liblgresampler.so /system/lib/
   cp -f /tmp/Supported/sony/framework/* /system/framework/
   cp -f /tmp/Supported/sony/lib/* /system/lib/
   cp -f /tmp/Supported/framework/* /system/framework/
   cp -f /tmp/Supported/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/huawei/lib/* /system/lib/
elif [ "`grep ro.product.brand=huawei /system/build.prop`" ]; 
then
   cp -f /tmp/Supported/lib/lib_Samsung_Resampler.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_3DPosition_ver107.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_3DRendering_ver102.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_AlbumArt_ver104.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_play_plus_hal_ver126c.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_play_plus_ver127a.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_SRC20k_ver100.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundAlive_SRC192_ver205.so /system/lib/
   cp -f /tmp/Supported/lib/lib_soundaliveresampler.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundBooster_hal_ver700.so /system/lib/
   cp -f /tmp/Supported/lib/lib_SoundBooster_ver700.so /system/lib/
   cp -f /tmp/Supported/lib/libaudiosa.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungDiamondVoiceExt.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungDiamondVoiceExtSwb.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungeffect.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungpowersound.so /system/lib/
   cp -f /tmp/Supported/lib/libsamsungSoundbooster_plus.so /system/lib/
   cp -f /tmp/Supported/lib/libSoundAlive_VSP_ver315b_arm.so /system/lib/
   cp -f /tmp/Supported/lib/liblgaudioutils.so /system/lib/
   cp -f /tmp/Supported/lib/liblgresampler.so /system/lib/
   cp -f /tmp/Supported/sony/framework/* /system/framework/
   cp -f /tmp/Supported/sony/lib/* /system/lib/
   cp -f /tmp/Supported/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/framework/* /system/framework/
   cp -f /tmp/Supported/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/huawei/lib/* /system/lib/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/Supported/etc/default.xml /system/customize/ACC/
elif [ "`grep ro.product.brand=Letv /system/build.prop`" ]; 
then
   cp -f /tmp/Supported/framework/* /system/framework/
elif [ -e /system/framework/framework-ext-res/framework-ext-res.apk ]; 
then
   cp -f /tmp/Supported/framework/* /system/framework/
elif [ "`grep ro.product.brand=lge /system/build.prop`" ]; 
then
   cp -f /tmp/Supported/sony/framework/* /system/framework/
   cp -f /tmp/Supported/sony/lib/* /system/lib/
   cp -f /tmp/Supported/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/huawei/lib/* /system/lib/
   cp -f /tmp/Supported/framework/* /system/framework/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/Supported/etc/default.xml /system/customize/ACC/
elif [ "`grep ro.product.brand=motorola /system/build.prop`" ]; 
then
   cp -f /tmp/Supported/sony/framework/* /system/framework/
   cp -f /tmp/Supported/sony/lib/* /system/lib/
   cp -f /tmp/Supported/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/framework/* /system/framework/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/Supported/etc/default.xml /system/customize/ACC/
elif [ -e /system/framework/twframework-res.apk ]; 
then
   cp -f /tmp/Supported/sony/framework/* /system/framework/
   cp -f /tmp/Supported/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/huawei/lib/* /system/lib/
   cp -f /tmp/Supported/sony/lib/* /system/lib/
   cp -f /tmp/Supported/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/sony/soundfx/* /system/lib/soundfx/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/Supported/etc/default.xml /system/customize/ACC/
elif [ "`grep ro.product.brand=Leeco /system/build.prop`" ]; 
then
   cp -f /tmp/Supported/framework/* /system/framework/
elif [ "`grep ro.build.version.sdk=19 /system/build.prop`" ]; 
then
   cp -f /tmp/Supported/framework/* /system/framework/
else
   cp -f /tmp/Supported/lib/* /system/lib/
   cp -f /tmp/Supported/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/sony/framework/* /system/framework/
   cp -f /tmp/Supported/sony/lib/* /system/lib/
   cp -f /tmp/Supported/sony/soundfx/* /system/lib/soundfx/
   cp -f /tmp/Supported/sony/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/huawei/vendor/* /system/vendor/lib/
   cp -f /tmp/Supported/huawei/lib/* /system/lib/
   cp -f /tmp/Supported/framework/* /system/framework/
   mkdir -p /system/customize
   mkdir -p /system/customize/ACC
   cp -f /tmp/Supported/etc/default.xml /system/customize/ACC/
fi

## Itelligent Installation for 64bit libraries and qualcomm HW effects
## NOTE: The script won't replace stock Qualcomm libs of your device
## this means that if you already have a qualcomm device, these libs won't be copied.

if [ -e /system/vendor/lib/soundfx/libqcvirt.so ];
then
  :
elif [ -e /system/lib64/soundfx/libeffectproxy.so ];
then
   cp -f /tmp/Supported/qualcomm/lib64/* /system/lib64/soundfx/
   cp -f /tmp/Supported/qualcomm/vendor64/* /system/vendor/lib64/soundfx/
elif [ -e /system/vendor/lib/soundfx/libqcbassboost.so ];
then
   cp -f /tmp/Supported/qualcomm/lib/* /system/lib/
   cp -f /tmp/Supported/qualcomm/vendor/* /system/vendodr/lib/soundfx
fi

## Installation of libvolumelistener.so. This lib basically grab the control of your device volume.
## This is part of the algorithm behind the XTREMEVolume Feature.
## However this may cause bugs if your device doesn't have this lib natively.
## This is still in BETA testing and it's reseved to Qualcomm Devices ONLY.

if [ "`grep ro.build.version.sdk=24 /system/build.prop`" ] && [ -e /system/vendor/lib/soundfx/libqcvirt.so ] && [ ! -e /system/lib/soundfx/libvolumelistener.so ];
then
  cp -f /tmp/Supported/volume/nougat/lib/libvolumelistener.so /system/lib/soundfx
fi
if [ "`grep ro.build.version.sdk=24 /system/build.prop`" ] && [ -e /system/lib64/soundfx/libeffectproxy.so ] && [ ! -e /system/lib64/soundfx/libvolumelistener.so ];
then
  cp -f /tmp/Supported/volume/nougat/lib64/libvolumelistener.so /system/lib64/soundfx
fi

if [ "`grep ro.build.version.sdk=23 /system/build.prop`" ] && [ -e /system/vendor/lib/soundfx/libqcvirt.so ] && [ ! -e /system/lib/soundfx/libvolumelistener.so ];
then
  cp -f /tmp/Supported/volume/marshmallow/lib/libvolumelistener.so /system/lib/soundfx
fi
if [ "`grep ro.build.version.sdk=23 /system/build.prop`" ] && [ -e /system/lib64/soundfx ] && [ ! -e /system/lib64/soundfx/libvolumelistener.so ];
then
  cp -f /tmp/Supported/volume/marshmallow/lib64/libvolumelistener.so /system/lib64/soundfx
fi