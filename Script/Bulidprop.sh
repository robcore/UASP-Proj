#!/sbin/sh

if [ "`grep ro.xtrememusic.is_active=true /system/build.prop`" ]; 
then
   :
elif [ -e /system/framework/com.sony.device.jar ]; 
then
busybox echo "" >> /system/build.prop
busybox echo "#=====================================" >> /system/build.prop
busybox echo "" >> /system/build.prop
busybox echo "# XTREMEMusic by androidexpert35" >> /system/build.prop
busybox echo "" >> /system/build.prop
busybox echo "#=====================================" >> /system/build.prop
busybox echo "ro.xtrememusic.is_active=true" >> /system/build.prop
busybox echo "audio.offload.pcm.24bit.enable=true" >> /system/build.prop
busybox echo "audio.offload.multiple.enabled=true" >> /system/build.prop
busybox echo "audio.offload.gapless.enabled=true" >> /system/build.prop
busybox echo "audio.offload.passthrough=false" >> /system/build.prop
busybox echo "audio.offload.track.enabled=true" >> /system/build.prop
busybox echo "tunnel.audio.encode=false" >> /system/build.prop
busybox echo "audio.offload.min.duration.secs=30" >> /system/build.prop
busybox echo "htc.audio.swalt.enable=1" >> /system/build.prop
busybox echo "htc.audio.swalt.mingain=14512" >> /system/build.prop
busybox echo "htc.audio.alc.enable=1" >> /system/build.prop
busybox echo "persist.audio.SupportHTCHWAEC=1" >> /system/build.prop
busybox echo "ro.audio.samplerate=96000" >> /system/build.prop
busybox echo "ro.somc.ldac.audio.supported=true" >> /system/build.prop
busybox echo "ro.audio.pcm.samplerate=96000" >> /system/build.prop
busybox echo "AUDIODRIVER=alsa" >> /system/build.prop
busybox echo "ro.sound.driver=alsa" >> /system/build.prop
busybox echo "persist.vivo.phone.hifi=Have_hifi" >> /system/build.prop
busybox echo "ro.config.hifi_config_state=1" >> /system/build.prop
busybox echo "use.dts_m6=true " >> /system/build.prop
busybox echo "use.dts_m6_notify=true" >> /system/build.prop
busybox echo "use.dts_eagle=true" >> /system/build.prop
busybox echo "persist.audio.hifi_dac=ON" >> /system/build.prop
busybox echo "persist.audio.voice.clarity=ON" >> /system/build.prop
busybox echo "alsa.mixer.playback.master=Speaker" >> /system/build.prop
busybox echo "alsa.mixer.capture.master=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.earpiece=Earpiece" >> /system/build.prop
busybox echo "alsa.mixer.capture.earpiece=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.headset=Headset" >> /system/build.prop
busybox echo "alsa.mixer.capture.headset=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.speaker=Speaker" >> /system/build.prop
busybox echo "alsa.mixer.capture.speaker=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.bt.sco=BTHeadset" >> /system/build.prop
busybox echo "alsa.mixer.capture.bt.sco=BTHeadset" >> /system/build.prop
busybox echo "htc.audio.lpa.a2dp=0" >> /system/build.prop
busybox echo "htc.audio.global.state=0" >> /system/build.prop
busybox echo "htc.audio.global.profile=0" >> /system/build.prop
busybox echo "htc.audio.q6.topology=0" >> /system/build.prop
busybox echo "htc.audio.enable_dmic=1" >> /system/build.prop
busybox echo "htc.audio.swalt.enable=1" >> /system/build.prop
busybox echo "htc.audio.swalt.mingain=14512" >> /system/build.prop
busybox echo "htc.audio.alc.enable=1" >> /system/build.prop
busybox echo "ro.config.hw_dolby=true" >> /system/build.prop
busybox echo "ro.config.hw_dts=true" >> /system/build.prop
busybox echo "# Harman Kardon" >> /system/build.prop
busybox echo "support_harman=true" >> /system/build.prop
busybox echo "support_boomsound_effect=true" >> /system/build.prop
busybox echo "# Support for sony automatic headphone compensation" >> /system/build.prop
busybox echo "sony.ahc.supported=yes" >> /system/build.prop
else
busybox echo "" >> /system/build.prop
busybox echo "#=====================================" >> /system/build.prop
busybox echo "" >> /system/build.prop
busybox echo "# XTREMEMusic by androidexpert35" >> /system/build.prop
busybox echo "" >> /system/build.prop
busybox echo "#=====================================" >> /system/build.prop
busybox echo "ro.xtrememusic.is_active=true" >> /system/build.prop
busybox echo "audio.offload.pcm.24bit.enable=true" >> /system/build.prop
busybox echo "audio.offload.multiple.enabled=true" >> /system/build.prop
busybox echo "audio.offload.gapless.enabled=true" >> /system/build.prop
busybox echo "audio.offload.passthrough=false" >> /system/build.prop
busybox echo "sony.effect.custom.sp_bundle=0x122" >> /system/build.prop
busybox echo "sony.effect.custom.caplus_hs=0x298" >> /system/build.prop
busybox echo "sony.effect.custom.caplus_sp=0x2B8" >> /system/build.prop
busybox echo "audio.offload.track.enabled=true" >> /system/build.prop
busybox echo "tunnel.audio.encode=false" >> /system/build.prop
busybox echo "audio.offload.min.duration.secs=30" >> /system/build.prop
busybox echo "htc.audio.swalt.enable=1" >> /system/build.prop
busybox echo "htc.audio.swalt.mingain=14512" >> /system/build.prop
busybox echo "htc.audio.alc.enable=1" >> /system/build.prop
busybox echo "persist.audio.SupportHTCHWAEC=1" >> /system/build.prop
busybox echo "ro.audio.samplerate=96000" >> /system/build.prop
busybox echo "ro.somc.ldac.audio.supported=true" >> /system/build.prop
busybox echo "ro.audio.pcm.samplerate=96000" >> /system/build.prop
busybox echo "AUDIODRIVER=alsa" >> /system/build.prop
busybox echo "ro.sound.driver=alsa" >> /system/build.prop
busybox echo "persist.vivo.phone.hifi=Have_hifi" >> /system/build.prop
busybox echo "ro.config.hifi_config_state=1" >> /system/build.prop
busybox echo "use.dts_m6=true " >> /system/build.prop
busybox echo "use.dts_m6_notify=true" >> /system/build.prop
busybox echo "use.dts_eagle=true" >> /system/build.prop
busybox echo "persist.audio.hifi_dac=ON" >> /system/build.prop
busybox echo "persist.audio.voice.clarity=ON" >> /system/build.prop
busybox echo "alsa.mixer.playback.master=Speaker" >> /system/build.prop
busybox echo "alsa.mixer.capture.master=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.earpiece=Earpiece" >> /system/build.prop
busybox echo "alsa.mixer.capture.earpiece=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.headset=Headset" >> /system/build.prop
busybox echo "alsa.mixer.capture.headset=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.speaker=Speaker" >> /system/build.prop
busybox echo "alsa.mixer.capture.speaker=Mic" >> /system/build.prop
busybox echo "alsa.mixer.playback.bt.sco=BTHeadset" >> /system/build.prop
busybox echo "alsa.mixer.capture.bt.sco=BTHeadset" >> /system/build.prop
busybox echo "htc.audio.lpa.a2dp=0" >> /system/build.prop
busybox echo "htc.audio.global.state=0" >> /system/build.prop
busybox echo "htc.audio.global.profile=0" >> /system/build.prop
busybox echo "htc.audio.q6.topology=0" >> /system/build.prop
busybox echo "htc.audio.enable_dmic=1" >> /system/build.prop
busybox echo "htc.audio.swalt.enable=1" >> /system/build.prop
busybox echo "htc.audio.swalt.mingain=14512" >> /system/build.prop
busybox echo "htc.audio.alc.enable=1" >> /system/build.prop
busybox echo "ro.config.hw_dolby=true" >> /system/build.prop
busybox echo "ro.config.hw_dts=true" >> /system/build.prop
busybox echo "# Harman Kardon" >> /system/build.prop
busybox echo "support_harman=true" >> /system/build.prop
busybox echo "support_boomsound_effect=true" >> /system/build.prop
busybox echo "# Support for sony automatic headphone compensation" >> /system/build.prop
busybox echo "sony.ahc.supported=yes" >> /system/build.prop
busybox echo "# Sony Audio & Resampling" >> /system/build.prop
busybox echo "mpq.audio.decode=true" >> /system/build.prop
busybox echo "sony.support.effect=0x1FF" >> /system/build.prop
busybox echo "ro.semc.sound_effects_enabled=true" >> /system/build.prop
busybox echo "ro.semc.xloud.supported=true" >> /system/build.prop
busybox echo "persist.service.xloud.enable=1" >> /system/build.prop
busybox echo "ro.semc.enhance.supported=true" >> /system/build.prop
busybox echo "persist.service.enhance.enable=1" >> /system/build.prop
busybox echo "ro.semc.clearaudio.supported=true" >> /system/build.prop
busybox echo "persist.service.clearaudio.enable=1" >> /system/build.prop
busybox echo "ro.sony.walkman.logger=1" >> /system/build.prop
busybox echo "persist.service.walkman.enable=1" >> /system/build.prop
busybox echo "ro.semc.clearphase.supported=true" >> /system/build.prop
busybox echo "persist.service.clearphase.enable=1" >> /system/build.prop
busybox echo "persist.service.enhance.enable=1" >> /system/build.prop
busybox echo "ro.somc.sforce.supported=true" >> /system/build.prop
busybox echo "persist.service.sforce.enable=1" >> /system/build.prop
busybox echo "ro.somc.dseehx.supported=true" >> /system/build.prop
busybox echo "persist.service.dseehx.enable=1" >> /system/build.prop
busybox echo "com.sonymobile.dseehx_enabled=true" >> /system/build.prop
busybox echo "com.sonyericsson.xloud_enabled=true" >> /system/build.prop
busybox echo "ro.semc.xloud.default_setting=true" >> /system/build.prop
busybox echo "com.sonymobile.clearphase_enabled=true" >> /system/build.prop
busybox echo "ro.semc.cp.default_setting=true" >> /system/build.prop
busybox echo "com.sonymobile.sforce_enabled=true" >> /system/build.prop
busybox echo "ro.semc.sfs.default_setting=true" >> /system/build.prop
busybox echo "C_A_PLUS=1" >> /system/build.prop
busybox echo "dsee_hx_state=1" >> /system/build.prop
busybox echo "DSEE_HX=1" >> /system/build.prop
busybox echo "ro.somc.dseehx.supported=true" >> /system/build.prop
busybox echo "persist.service.dseehx.enable=1" >> /system/build.prop
busybox echo "com.sonymobile.dseehx_enabled=true" >> /system/build.prop
busybox echo "#=====================================" >> /system/build.prop
fi