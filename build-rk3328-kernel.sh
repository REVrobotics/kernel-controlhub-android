#!/bin/sh

make ARCH=arm64 rockchip_smp_nougat_defconfig
make ARCH=arm64 rk3328-evb.img -j$(nproc)

