#!/bin/sh

make ARCH=arm64 rockchip_smp_nougat_defconfig
#make ARCH=arm64 rk3328-evb.img -j$(nproc)
make ARCH=arm64 rk3328-rev-rds-android.img -j$(nproc)
#make ARCH=arm64 rk3328-rev-rds-sdmmc-debug-android.img -j$(nproc)

