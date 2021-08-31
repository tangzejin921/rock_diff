#!/bin/bash
# 到repo目录执行下面命令，最终更新system.img

source build/envsetup.sh && setpaths;
cd ${ANDROID_BUILD_TOP}/rockdev/Image/;
simg2img ${ANDROID_PRODUCT_OUT}/system.img system.img

printf '已生成system.img请使用下面命令烧写\nrkdeveloptool wl 1542144 %s\n' ${ANDROID_BUILD_TOP}/rockdev/Image/system.img
# rkdeveloptool wl 1542144 system.img