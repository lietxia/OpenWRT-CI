#!/bin/bash

#加回部分设备支持
if [[ $WRT_URL == *"immortalwrt"* && $WRT_TARGET == "Mediatek" ]]; then
	cp -rf ./Patches/mediatek/*.dts ./wrt/target/linux/mediatek/dts/
	patch -R -p1 -d ./wrt < ./Patches/mediatek/*.patch
fi

git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
