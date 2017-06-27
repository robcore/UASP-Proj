#!/sbin/sh
# Main script program
# By KKSiS

grep_prop() {
  REGEX="s/^$1=//p"
  shift
  FILES=$@
  if [ -z "$FILES" ]; then
    FILES='$SYS/build.prop'
  fi
  cat $FILES 2>/dev/null | sed -n $REGEX | head -n 1
}

install () {
  cp -f $5 $6 || exit 1
  set_perm $1 $2 $3 $4 $6
}

set_perm () {
  uid=$1; gid=$2; dmod=$3; fmod=$4;
  shift 4;
  until [ ! "$1" ]; do
    chown -R $uid.$gid $1; chown -R $uid:$gid $1;
    find "$1" -type d -exec chmod $dmod {} +;
    find "$1" -type f -exec chmod $fmod {} +;
    shift;
  done;
}

#Set /system
if [ -d "$SYS$SYS" ]; then
  SYS=$SYS$SYS
else
  SYS=$SYS
fi
#Set /vendor
if [ ! -d "$SYS/vendor" ] || [ -L "$SYS/vendor" ]; then
  safe_mount /vendor
  VEN=/vendor
elif [ -d "$SYS/vendor" ] || [ -L "/vendor" ]; then
  VEN=$SYS/vendor
fi
#set build.prop path
if [ -e "$VEN/build.prop" ] && [ ! -e "$SYS/build.prop" ]; then
  BPROP=$VEN/build.prop
elif [ -e "$SYS/build.prop" ] && [ ! -e "$VEN/build.prop" ]; then
  BPROP=$SYS/build.prop
elif [ -e "$SYS/build.prop" ] && [ -e "$VEN/build.prop" ]; then
  if [ $(wc -c < "$SYS/build.prop") -ge $(wc -c < "$VEN/build.prop") ]; then
    BPROP=$SYS/build.prop
  else
    BPROP=$VEN/build.prop
  fi
fi
#set Internal Storage
if [ -d "/data/media/0" ]; then
  SDCARD=/data/media/0
elif [ -d "/storage/emulated/0" ]; then
  SDCARD=/storage/emulated/0
elif [ -d "/sdcard/0" ]; then
  SDCARD=/sdcard/0
elif [ -d "/sdcard_internal/0" ]; then
  SDCARD=/sdcard_internal/0
elif [ "/sdcard_internal" ]; then
  SDCARD=/sdcard_internal
else
  SDCARD=/sdcard
fi

if [ -e $SFK/com.sony.device.jar ]; then
	BRAND=sony
elif [ -e $SFK/twframework-res.apk ]; then
	BRAND=samsung
else
	BRAND=$(grep_prop ro.product.brand)
fi

API=$(grep_prop ro.build.version.sdk)
SLIB=$SYS/lib
VLIB=$VEN/lib
PLIB=$PFILE/lib
SSF=$SLIB/soundfx
VSF=$VLIB/soundfx
PSF=$PLIB/soundfx
SLIB64=$SYS/lib64
VLIB64=$VEN/lib64
SSF64=$SLIB64/soundfx
VSF64=$VLIB64/soundfx
SFK=$SYS/framework
PFK=$PFILE/framework
PFILE=/tmp/asset
BAK=$SDCARD/.tmpbak
ETC=$SYS/etc

############## Backup Original system Files
if [ ! -e $BAK ]; 
then
	mkdir -p $BAK
	cp -f $ETC/audio_effect.conf $BAK/
	cp -f $VEN/etc/audio_effect.conf $BAK/
	cp -f $SLIB/libaudioresampler.so $BAK/
	cp -f $SLIB/libaudio-resampler.so $BAK/ 
	cp -f $SLIB/libalsautils.so $BAK/
	cp -f $VLIB/libaudioalsa.so $BAK/
	cp -f $BPROP $BAK/
fi
if [ "$BRAND" = "huawei" ];
then
	cp -rf $ETC/audio/algorithm $BAK/
	cp -rf $ETC/audio/asrenhance $BAK/
	cp -rf $ETC/audio/dts $BAK/
	cp -rf $ETC/audio/hi6402 $BAK/
	cp -rf $ETC/audio/hi6403 $BAK/
	cp -rf $ETC/audio/mbdrc $BAK/
	cp -rf $ETC/audio/maxim $BAK/
	cp -rf $ETC/audio/modem $BAK/
	cp -rf $ETC/audio/sws $BAK/
	cp -rf $ETC/audio/tracklogconfig $BAK/
fi

tar -cf Bak_UASP.ASP $BAK/
rm -rf $BAK
############# End

############ Patcher lib and other system files

if [ "$BRAND" = "sony" ]; then
   install 0 0 0 0644 $PLIB/lib_Samsung_Resampler.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_3DPosition_ver107.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_3DRendering_ver102.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_AlbumArt_ver104.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_play_plus_hal_ver126c.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_play_plus_ver127a.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_SRC20k_ver100.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_SRC192_ver205.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_soundaliveresampler.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundBooster_hal_ver700.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundBooster_ver700.so $SLIB/
   install 0 0 0 0644 $PLIB/libaudiosa.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungDiamondVoiceExt.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungDiamondVoiceExtSwb.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungeffect.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungpowersound.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungSoundbooster_plus.so $SLIB/
   install 0 0 0 0644 $PLIB/libSoundAlive_VSP_ver315b_arm.so $SLIB/
   install 0 0 0 0644 $PLIB/liblgaudioutils.so $SLIB/
   install 0 0 0 0644 $PLIB/liblgresampler.so $SLIB/
   install 0 0 0 0644 $PSF/* $SSF/
   install 0 0 0 0644 $PFILES/huawei/vendor/* $VLIB/
	install 0 0 0 0644 $PFILES/huawei/lib/* $SLIB/
   install 0 0 0 0644 $PFK/* $SFK/
   GETACC=1
	
elif [ "$BRAND" = "htc" ]; then
   install 0 0 0 0644 $PLIB/lib_Samsung_Resampler.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_3DPosition_ver107.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_3DRendering_ver102.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_AlbumArt_ver104.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_play_plus_hal_ver126c.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_play_plus_ver127a.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_SRC20k_ver100.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_SRC192_ver205.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_soundaliveresampler.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundBooster_hal_ver700.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundBooster_ver700.so $SLIB/
   install 0 0 0 0644 $PLIB/libaudiosa.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungDiamondVoiceExt.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungDiamondVoiceExtSwb.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungeffect.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungpowersound.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungSoundbooster_plus.so $SLIB/
   install 0 0 0 0644 $PLIB/libSoundAlive_VSP_ver315b_arm.so $SLIB/
   install 0 0 0 0644 $PLIB/liblgaudioutils.so $SLIB/
   install 0 0 0 0644 $PLIB/liblgresampler.so $SLIB/
   install 0 0 0 0644 $PFILE/sony/framework/* $SFK/
   install 0 0 0 0644 $PFILE/sony/lib/* $SLIB/
   install 0 0 0 0644 $PFK/* $SFK/
   install 0 0 0 0644 $PFILE/sony/soundfx/* $SSF/
   install 0 0 0 0644 $PFILE/sony/vendor/* $VLIB/
   install 0 0 0 0644 $PSF/* $SSF/
   install 0 0 0 0644 $PFILE/huawei/vendor/* $VLIB/
   install 0 0 0 0644 $PFILE/huawei/lib/* $SLIB/
	GETACC=0
	
elif [ "$BRAND" = "huawei" ]; then
   install 0 0 0 0644 $PLIB/lib_Samsung_Resampler.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_3DPosition_ver107.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_3DRendering_ver102.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_AlbumArt_ver104.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_play_plus_hal_ver126c.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_play_plus_ver127a.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_SRC20k_ver100.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundAlive_SRC192_ver205.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_soundaliveresampler.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundBooster_hal_ver700.so $SLIB/
   install 0 0 0 0644 $PLIB/lib_SoundBooster_ver700.so $SLIB/
   install 0 0 0 0644 $PLIB/libaudiosa.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungDiamondVoiceExt.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungDiamondVoiceExtSwb.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungeffect.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungpowersound.so $SLIB/
   install 0 0 0 0644 $PLIB/libsamsungSoundbooster_plus.so $SLIB/
   install 0 0 0 0644 $PLIB/libSoundAlive_VSP_ver315b_arm.so $SLIB/
   install 0 0 0 0644 $PLIB/liblgaudioutils.so $SLIB/
   install 0 0 0 0644 $PLIB/liblgresampler.so $SLIB/
   install 0 0 0 0644 $PFILE/sony/framework/* $SFK/
   install 0 0 0 0644 $PFILE/sony/lib/* $SLIB/
   install 0 0 0 0644 $PFILE/sony/soundfx/* $SSF/
   install 0 0 0 0644 $PFILE/sony/vendor/* $VLIB/
   install 0 0 0 0644 $PSF/* $SSF/
   install 0 0 0 0644 $PFK/* $SFK/
   install 0 0 0 0644 $PFILE/huawei/vendor/* $VLIB/
   install 0 0 0 0644 $PFILE/huawei/lib/* $SLIB/
   GETACC=1
	
elif [ "$BRAND" = "lge" ]; then
   install 0 0 0 0644 $PFILE/sony/framework/* $SFK/
   install 0 0 0 0644 $PFILE/sony/lib/* $SLIB/
   install 0 0 0 0644 $PFILE/sony/soundfx/* $SSF/
   install 0 0 0 0644 $PFILE/sony/vendor/* $VLIB/
   install 0 0 0 0644 $PSF/* $SSF/
   install 0 0 0 0644 $PFILE/huawei/vendor/* $VLIB/
   install 0 0 0 0644 $PFILE/huawei/lib/* $SLIB/
   install 0 0 0 0644 $PFK/* $SFK/
   GETACC=1
	
elif [ "$BRAND" = "motorola" ]; then
   install 0 0 0 0644 $PFILE/sony/framework/* $SFK/
   install 0 0 0 0644 $PFILE/sony/lib/* $SLIB/
   install 0 0 0 0644 $PFILE/sony/soundfx/* $SSF/
   install 0 0 0 0644 $PFILE/sony/vendor/* $VLIB/
   install 0 0 0 0644 $PSF/* $SSF/
   install 0 0 0 0644 $PFK/* $SFK/
   GETACC=1
	
elif [ "$BRAND" = "samsung" ]; then
   install 0 0 0 0644 $PFILE/sony/framework/* $SFK/
   install 0 0 0 0644 $PFILE/huawei/vendor/* $VLIB/
   install 0 0 0 0644 $PFILE/huawei/lib/* $SLIB/
   install 0 0 0 0644 $PFILE/sony/lib/* $SLIB/
   install 0 0 0 0644 $PFILE/sony/vendor/* $VLIB/
   install 0 0 0 0644 $PFILE/sony/soundfx/* $SSF/
   GETACC=1
	
elif [  -e $SFK/framework-ext-res/framework-ext-res.apk ] || [ "$BRAND" = "Letv" ] || [ "$BRAND" = "Leeco" ] || [ "$API" -le "19" ]; then
   install 0 0 0 0644 $PFK/* $SFK/
else
   install 0 0 0 0644 $PLIB/* $SLIB/
   install 0 0 0 0644 $PFILE/vendor/* $VLIB/
   install 0 0 0 0644 $PSF/* $SSF/
   install 0 0 0 0644 $PFILE/sony/framework/* $SFK/
   install 0 0 0 0644 $PFILE/sony/lib/* $SLIB/
   install 0 0 0 0644 $PFILE/sony/soundfx/* $SSF/
   install 0 0 0 0644 $PFILE/sony/vendor/* $VLIB/
   install 0 0 0 0644 $PFILE/huawei/vendor/* $VLIB/
   install 0 0 0 0644 $PFILE/huawei/lib/* $SLIB/
   install 0 0 0 0644 $PFK/* $SFK/
   GETACC=1
fi

if [ -e $VSF/libqcvirt.so ];
then
  :
elif [ -e $SSF64/libeffectproxy.so ];
then
   install 0 0 0 0644 $PFILE/qualcomm/lib64/* $SSF64/
   install 0 0 0 0644 $PFILE/qualcomm/vendor64/* $VSF64/
elif [ -e $VSF64/libqcbassboost.so ];
then
   install 0 0 0 0644 $PFILE/qualcomm/lib/* $SLIB/
   install 0 0 0 0644 $PFILE/qualcomm/vendor/* $VSF/
fi


if [ "$API" -ge "24" ]; then
	if [ -e $VLIB/soundfx/libqcvirt.so ] && [ ! -e $SSF/libvolumelistener.so ]; then
		install 0 0 0 0644 $PFILE/volume/nougat/lib/libvolumelistener.so $SSF/
	elif [ -e $SSF64/libeffectproxy.so ] && [ ! -e $SSF64/libvolumelistener.so ]; then
		install 0 0 0 0644 $PFILE/volume/nougat/lib64/libvolumelistener.so $SSF64/
	fi
elif [ "$API" -le "23" ]; then
	if [ -e $VSF/libqcvirt.so ] && [ ! -e $SSF/libvolumelistener.so ]; then
		install 0 0 0 0644 $PFILE/volume/marshmallow/lib/libvolumelistener.so $SSF/
	elif [ ! -e $SSF64/libvolumelistener.so ]; then
		install 0 0 0 0644 $PFILE/volume/marshmallow/lib64/libvolumelistener.so $SSF64/
	fi
fi

if [ "$GETACC" = "1" ]; then
	mkdir -p $SYS/customize
   mkdir -p $SYS/customize/ACC
   install 0 0 0 0644 $PFILE/etc/default.xml $SYS/customize/ACC/
fi

################### End

##################