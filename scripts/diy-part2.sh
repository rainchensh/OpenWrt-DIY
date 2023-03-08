#!/bin/bash
#
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.5/192.168.199.1/g' package/base-files/files/bin/config_generate
#add sirpdboy's luci-app-netspeedtest
git clone https://github.com/ZeaKyX/speedtest-web package/speedtest-web
git clone https://github.com/sivel/speedtest-cli.git package/speedtest-cl
git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
# Clone community packages to package/community
mkdir package/community
pushd package/community

# Add luci-app-passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall

# Add luci-app-vssr <M>
git clone --depth=1 https://github.com/jerrykuku/lua-maxminddb.git
git clone --depth=1 https://github.com/jerrykuku/luci-app-vssr

# Add OpenClash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash

# Add luci-app-dockerman
rm -rf ../lean/luci-app-docker
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman
git clone --depth=1 https://github.com/lisaac/luci-lib-docker

popd

# Change default shell to zsh
# sed -i 's/\/bin\/ash/\/usr\/bin\/zsh/g' package/base-files/files/etc/passwd
