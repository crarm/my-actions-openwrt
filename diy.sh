#!/bin/bash
#=======================================
#删除lienol与lean包中的重复程序
#=======================================
rm -rf package/lienol/lienol/ipt2socks
rm -rf package/lienol/lienol/shadowsocksr-libev
rm -rf package/lienol/lienol/pdnsd-alt
rm -rf package/lienol/package/verysync
rm -rf package/lienol/package/ipt2socks
rm -rf package/lienol/lienol/luci-app-verysync
rm -rf package/lienol/package/kcptunkcptun
rm -rf package/lean/pdnsd-alt
rm -rf package/lean/shadowsocksr-libev
rm -rf package/lean/simple-obfs
rm -rf package/lean/trojan
rm -rf package/lean/v2ray
rm -rf package/lean/v2ray-plugin
rm -rf package/lean/luci-app-ipsec-vpnd
rm -rf package/lean/luci-app-kodexplorer
rm -rf package/lean/luci-app-pppoe-relay
rm -rf package/lean/luci-app-pptp-server
rm -rf package/lean/luci-app-ramfree
rm -rf package/lean/luci-app-softethervpn
rm -rf package/lean/luci-app-v2ray-server

#修改默认内网网关IP地址
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate

#luci-app-ssr-plus 改为 vpn 菜单下
sed -i 's/"services"/"vpn"/g' package/lean/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua


#luci-app-openclash 改为 vpn 菜单下
sed -i 's/"services"/"vpn"/g' package/OpenClash/luci-app-openclash/files/usr/lib/lua/luci/controller/openclash.lua


#luci-app-frpc 改为vpn 菜单下
sed -i 's/"services"/"vpn"/g' package/lean/luci-app-frpc/luasrc/controller/frp.lua


#luci-app-nps 改为vpn 菜单下
sed -i 's/"services"/"vpn"/g' package/lean/luci-app-nps/luasrc/controller/nps.lua


#luci-app-openvpn-server 改为vpn 菜单下
sed -i 's/"services"/"vpn"/g' package/lean/luci-app-openvpn-server/luasrc/controller/openvpn-server.lua

#luci-app-openvpn 改为vpn 菜单下
#sed -i 's/"services"/"vpn"/g' package/lean/luci-app-openvpn/luasrc/controller/openvpn.lua

