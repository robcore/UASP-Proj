#!/sbin/sh

if [ ! -e /data/media/0/XM_backup ]; 
then
mkdir -p /data/media/0/XM_backup
cp -f /system/etc/audio_effect.conf /data/media/0/XM_backup
cp -f /system/vendor/etc/audio_effect.conf /data/media/0/XM_backup
cp -f /system/lib/libaudioresampler.so /data/media/0/XM_backup
cp -f /system/lib/libaudio-resampler.so /data/media/0/XM_backup
cp -f /system/lib/libalsautils.so /data/media/0/XM_backup
cp -f /system/vendor/lib/libaudioalsa.so /data/media/0/XM_backup
cp -f /system/build.prop /data/media/0/XM_backup
elif [ "`grep ro.product.brand=huawei /system/build.prop`" ];
then
cp -rf /system/etc/audio/algorithm /data/media/0/XM_backup
cp -rf /system/etc/audio/asrenhance /data/media/0/XM_backup
cp -rf /system/etc/audio/dts /data/media/0/XM_backup
cp -rf /system/etc/audio/hi6402 /data/media/0/XM_backup
cp -rf /system/etc/audio/hi6403 /data/media/0/XM_backup
cp -rf /system/etc/audio/mbdrc /data/media/0/XM_backup
cp -rf /system/etc/audio/maxim /data/media/0/XM_backup
cp -rf /system/etc/audio/modem /data/media/0/XM_backup
cp -rf /system/etc/audio/sws /data/media/0/XM_backup
cp -rf /system/etc/audio/tracklogconfig /data/media/0/XM_backup
fi