#!/bin/bash
#=======================================
#delete the same packages bettwen lienol and lean 
#=======================================
if [ -f "package/lienol/package/ipt2socks" ]; then
rm -rf package/lienol/package/ipt2socks
fi
if [ -f "package/lienol/package/shadowsocksr-libev" ]; then
rm -rf package/lienol/package/shadowsocksr-libev
fi
if [ -f "package/lienol/package/pdnsd-alt" ]; then
rm -rf package/lienol/package/pdnsd-alt
fi
if [ -f "package/lienol/package/verysync" ]; then
rm -rf package/lienol/package/verysync
fi
if [ -f "package/lienol/package/ipt2socks" ]; then
rm -rf package/lienol/package/ipt2socks
fi
if [ -f "package/lienol/lienol/luci-app-verysync" ]; then
rm -rf package/lienol/lienol/luci-app-verysync
fi
if [ -f "package/lienol/package/kcptunkcptun" ]; then
rm -rf package/lienol/package/kcptunkcptun
fi
if [ -f "package/lean/pdnsd-alt" ]; then
rm -rf package/lean/pdnsd-alt
fi
if [ -f "package/lean/shadowsocksr-libev" ]; then
rm -rf package/lean/shadowsocksr-libev
fi
if [ -f "package/lean/simple-obfs" ]; then
rm -rf package/lean/simple-obfs
fi
if [ -f "package/lean/trojan" ]; then
rm -rf package/lean/trojan
fi
if [ -f "package/lean/v2ray" ]; then
rm -rf package/lean/v2ray
fi
if [ -f "package/lean/v2ray-plugin" ]; then
rm -rf package/lean/v2ray-plugin
fi
if [ -f "package/lean/luci-app-ipsec-vpnd" ]; then
rm -rf package/lean/luci-app-ipsec-vpnd
fi
if [ -f "package/lean/luci-app-kodexplorer" ]; then
rm -rf package/lean/luci-app-kodexplorer
fi
if [ -f "package/lean/luci-app-pppoe-relayls" ]; then
rm -rf package/lean/luci-app-pppoe-relayls
fi
if [ -f "package/lean/luci-app-pptp-server" ]; then
rm -rf package/lean/luci-app-pptp-server
fi
if [ -f "package/lean/luci-app-ramfree" ]; then
rm -rf package/lean/luci-app-ramfree
fi
if [ -f "package/lean/luci-app-softethervpn" ]; then
rm -rf package/lean/luci-app-softethervpn
fi
if [ -f "package/lean/luci-app-v2ray-server" ]; then
rm -rf package/lean/luci-app-v2ray-server
fi
#config the IP 
if [ -f "package/base-files/files/bin/config_generate" ]; then
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate
fi
#change luci-app-ssr-plus to vpn menu
if [ -f "package/lean/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua" ]; then
sed -i 's/"services"/"vpn"/g' package/lean/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua
fi
#change luci-app-openclash to vpn menu
if [ -f "package/OpenClash/luci-app-openclash/files/usr/lib/lua/luci/controller/openclash.lua" ]; then
sed -i 's/"services"/"vpn"/g' package/OpenClash/luci-app-openclash/files/usr/lib/lua/luci/controller/openclash.lua
fi
#change luci-app-frpc to vpn menu
if [ -f "package/lean/luci-app-frpc/luasrc/controller/frp.lua" ]; then
sed -i 's/"services"/"vpn"/g' package/lean/luci-app-frpc/luasrc/controller/frp.lua
fi
#change luci-app-nps to vpn menu
if [ -f "package/lean/luci-app-nps/luasrc/controller/nps.lua" ]; then
sed -i 's/"services"/"vpn"/g' package/lean/luci-app-nps/luasrc/controller/nps.lua
fi
#change luci-app-openvpn-server to vpn menu
if [ -f "package/lean/luci-app-openvpn-server/luasrc/controller/openvpn-server.lua" ]; then
sed -i 's/"services"/"vpn"/g' package/lean/luci-app-openvpn-server/luasrc/controller/openvpn-server.lua
fi
#chang luci-app-vssr to vpn menu
if [ -f "package/luci-app-vssr/luasrc/controller/vssr.lua" ]; then
sed -i 's/"services"/"vpn"/g' package/luci-app-vssr/luasrc/controller/vssr.lua
fi
#change luci-app-openvpn to vpn menu
if [ -f "feeds/luci/applications/luci-app-openvpn/luasrc/controller/openvpn.lua" ]; then
sed -i 's/"services"/"vpn"/g' feeds/luci/applications/luci-app-openvpn/luasrc/controller/openvpn.lua
fi