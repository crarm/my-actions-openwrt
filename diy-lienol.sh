#!/bin/bash
#=======================================
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
#change luci-app-openvpn to vpn menu
if [ -f "feeds/luci/applications/luci-app-openvpn/luasrc/controller/openvpn.lua" ]; then
sed -i 's/"services"/"vpn"/g' feeds/luci/applications/luci-app-openvpn/luasrc/controller/openvpn.lua
fi
#chang luci-app-vssr to vpn menu
if [ -f "package/luci-app-vssr/luasrc/controller/vssr.lua" ]; then
sed -i 's/"services"/"vpn"/g' package/luci-app-vssr/luasrc/controller/vssr.lua
fi