#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 进入 OpenWrt 源码目录
cd openwrt

# 添加高通 NSS 满血加速补丁
git pull https://github.com/breeze303/ipq60xx-nss.git main

# 添加 iStore 应用商店 feed
echo 'src-git istore https://github.com/linkease/istore.git' >> feeds.conf.default
