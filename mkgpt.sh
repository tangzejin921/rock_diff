#!/bin/bash
# 到repo目录执行下面命令，最终生成 gpt.img

source build/envsetup.sh && setpaths;
ln -s RKTools/linux/Linux_Pack_Firmware/rockdev/ rockdev;
./mkimage.sh;

#${OLDPWD}/rockdev/;
#ln -s Image-rk3399 Image;
#./mkupdate.sh;

cd ${ANDROID_BUILD_TOP}/rockdev/;
./android-gpt.sh;

printf '已生成gpt.img请使用下面命令烧写\nrkdeveloptool wl 0 %s\n' ${ANDROID_BUILD_TOP}/rockdev/Image/gpt.img
#rkdeveloptool wl 0 gpt.img