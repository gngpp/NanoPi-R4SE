#!/bin/bash

# Add cpufreq
rm -rf ./feeds/luci/applications/luci-app-cpufreq 
svn export https://github.com/DHDAXCW/luci-bt/trunk/applications/luci-app-cpufreq ./feeds/luci/applications/luci-app-cpufreq
ls -lah ./feeds/luci/applications/luci-app-cpufreq/po/zh_Hans
mv ./feeds/luci/applications/luci-app-cpufreq/po/zh_Hans ./feeds/luci/applications/luci-app-cpufreq/po/zh-cn
ls -lah ./feeds/luci/applications/luci-app-cpufreq/po/zh-cn
ln -sf ./feeds/luci/applications/luci-app-cpufreq ./package/feeds/luci/luci-app-cpufreq
sed -i 's,1608,1800,g' feeds/luci/applications/luci-app-cpufreq/root/etc/uci-defaults/10-cpufreq
sed -i 's,2016,2208,g' feeds/luci/applications/luci-app-cpufreq/root/etc/uci-defaults/10-cpufreq
sed -i 's,1512,1608,g' feeds/luci/applications/luci-app-cpufreq/root/etc/uci-defaults/10-cpufreq
# 🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧🚧

# Add wg-quick
git clone https://github.com/gngpp/wg-quick package/network/utils/wg-quick

# alist
git clone https://github.com/sbwml/luci-app-alist package/alist
rm -rf feeds/packages/lang/golang
svn export https://github.com/sbwml/packages_lang_golang/branches/19.x feeds/packages/lang/golang

# control
rm -rf ./feeds/luci/applications/luci-app-control-speedlimit
rm -rf ./feeds/luci/applications/luci-app-timecontrol
rm -rf ./feeds/luci/applications/luci-app-control-timewol
rm -rf ./feeds/luci/applications/luci-app-control-webrestriction
rm -rf ./feeds/luci/applications/luci-app-control-weburl

# Add luci-app-watchcat-plus
rm -rf feeds/packages/utils/watchcat
svn co https://github.com/openwrt/packages/trunk/utils/watchcat feeds/packages/utils/watchcat
git clone https://github.com/gngpp/luci-app-watchcat-plus.git package/luci-app-watchcat-plus

# Add luci-theme
rm -rf feeds/luci/themes/luci-theme-design
rm -rf feeds/luci/applications/luci-app-design-config
git clone --depth=1 https://github.com/gngpp/luci-app-design-config package/luci-app-design-config
git clone --depth=1 https://github.com/gngpp/luci-theme-design package/luci-theme-design

# Clone community packages
mkdir package/community
pushd package/community

# Add Lienol's Packages
git clone --depth=1 https://github.com/Lienol/openwrt-package
rm -rf openwrt-package/verysync
rm -rf openwrt-package/luci-app-verysync

# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2
svn export https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall

# Add luci-app-ssr-plus
git clone --depth=1 https://github.com/fw876/helloworld

# Add luci-app-unblockneteasemusic
git clone --branch master https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git

# Add luci-app-vssr <M>
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr 

# Add luci-proto-minieap
git clone --depth=1 https://github.com/ysc3839/luci-proto-minieap

# Add OpenClash
svn export https://github.com/vernesong/OpenClash/trunk/luci-app-openclash

# Add ServerChan
git clone --depth=1 https://github.com/tty228/luci-app-serverchan

# Add luci-app-dockerman
rm -rf ../../customfeeds/luci/collections/luci-lib-docker
rm -rf ../../customfeeds/luci/applications/luci-app-docker
rm -rf ../../customfeeds/luci/applications/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker

# Add luci-app-autotimeset
git clone --depth=1 https://github.com/sirpdboy/luci-app-autotimeset

# Add subconverter
git clone --depth=1 https://github.com/tindy2013/openwrt-subconverter

# Add luci-app-smartdns & smartdns
svn export https://github.com/281677160/openwrt-package/trunk/luci-app-smartdns

# Add luci-app-services-wolplus
svn export https://github.com/msylgj/OpenWrt_luci-app/trunk/luci-app-services-wolplus

# Add apk (Apk Packages Manager)
svn export https://github.com/openwrt/packages/trunk/utils/apk

# Add luci-app-poweroff
git clone --depth=1 https://github.com/esirplayground/luci-app-poweroff

# Add OpenAppFilter
git clone --depth=1 https://github.com/destan19/OpenAppFilter

# Add luci-aliyundrive-webdav
rm -rf ../../customfeeds/luci/applications/luci-app-aliyundrive-webdav 
rm -rf ../../customfeeds/packages/multimedia/aliyundrive-webdav
svn export https://github.com/messense/aliyundrive-webdav/trunk/openwrt/aliyundrive-webdav
svn export https://github.com/messense/aliyundrive-webdav/trunk/openwrt/luci-app-aliyundrive-webdav

# Add extra wireless drivers
svn export https://github.com/immortalwrt/immortalwrt/branches/openwrt-18.06-k5.4/package/kernel/rtl8812au-ac
svn export https://github.com/immortalwrt/immortalwrt/branches/openwrt-18.06-k5.4/package/kernel/rtl8188eu
svn export https://github.com/immortalwrt/immortalwrt/branches/openwrt-18.06-k5.4/package/kernel/rtl88x2bu
popd

# Add Pandownload
pushd package/lean
svn export https://github.com/immortalwrt/packages/trunk/net/pandownload-fake-server
popd

# Change default shell to zsh
sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd

# Modify default IP
sed -i 's/192.168.1.1/10.0.1.1/g' package/base-files/files/bin/config_generate

# 删除定时coremark
rm -rf ./customfeeds/packages/utils/coremark
svn export https://github.com/DHDAXCW/packages/trunk/utils/coremark customfeeds/packages/utils/coremark

# 风扇脚本
# mkdir -p target/linux/rockchip/armv8/base-files/etc/init.d/
# mkdir -p target/linux/rockchip/armv8/base-files/usr/bin/
# cp -r ../build/scripts/fa-rk3399-pwmfan target/linux/rockchip/armv8/base-files/etc/init.d/
# cp -r ../build/scripts/start-rk3399-pwm-fan.sh target/linux/rockchip/armv8/base-files/usr/bin/

# 风扇脚本
# wget -P target/linux/rockchip/armv8/base-files/etc/init.d/ https://github.com/friendlyarm/friendlywrt/raw/master-v19.07.1/target/linux/rockchip-rk3399/base-files/etc/init.d/fa-rk3399-pwmfan
# wget -P target/linux/rockchip/armv8/base-files/usr/bin/ https://github.com/friendlyarm/friendlywrt/raw/master-v19.07.1/target/linux/rockchip-rk3399/base-files/usr/bin/start-rk3399-pwm-fan.sh

#kernel
sed -i 's/6.1/5.4/g' ./target/linux/rockchip/Makefile
rm -rf ./target/linux/rockchip/patches-5.4/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch
cp ../target/linux/rockchip/patches-5.4/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch ./target/linux/rockchip/patches-5.4/992-rockchip-rk3399-overclock-to-2.2-1.8-GHz-for-NanoPi4.patch

# rockchip: add drm and lima gpu driver
rm ./target/linux/rockchip/modules.mk
cp ../target/linux/rockchip/modules.mk ./target/linux/rockchip/modules.mk
rm ./package/kernel/linux/modules/video.mk
cp ../package/kernel/linux/modules/video.mk ./package/kernel/linux/modules/video.mk
