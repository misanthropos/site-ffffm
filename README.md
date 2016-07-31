## Frankfurter Stable Version

### v2.0-stable-34 (noch nicht automatisch ausgerollt)
- Gebaut 31.07.2016
- Freigegebenes Gluon v2016.1.5
- OpenWrt Chaos Calmer 15.05
- Basis bzw. Übernahme der Site-Konfiguration aus v1.10.4-test-96 
- Neues Bezeichnungsschema der Firmware
- Announced und Alfred entfernt.
- radvd für öffentliches IPv6-Netz deaktiviert und für ULA-Netz aktiviert
- 'prefix6' ist jetzt 'fddd:5d16:b5dd:0::/64'
- 'next_node.ipv6' ist jetzt fddd:5d16:b5dd:ffff::1
- fastd Ports 10001 und 10002 (für kleine/große MTU)
- Mesh-VPN Verschlüsselung 'salsa2012+gmac' entfernt
- Mesh-VPN ist standardmäßig aktiv
- Konfig-Modus in den Sprachen DE und EN
- Keine Anzeige des Router-Keys am Ende der Router-Konfiguration
- opkg-Pfade für Paket-Nachinstalltionen hinzu
- Build spezifische opkg-Module werden auf Frankfurter Server abgelegt
- Neue [Gluon-Pakete](https://github.com/freifunk-ffm/packages/tree/master/ffffm):
  - 'ffffm-fastd-auto-mtu' Auto-MTU 1280/1426 Byte (FFM-Eigenentwicklung)
  - 'ffffm-keep-radio-channel' WLAN-Kanäle sind jetzt Update-fest (FFM-Eigenentwicklung)
  - 'ffffm-ath9k-broken-wifi-workaround' (FFM-Eigenentwicklung)
  - 'ffffm-disable-80211b' (FFM-Eigenentwicklung)
  - 'ffffm-additional-wifi-json-info' Map-Anzeige von Wifi-Kanal und -Airtime (FFM-Eigenentwicklung)
  - 'ffffm-enlarge-dns-cache' (FFM-Eigenentwicklung)
  - 'ffffm-banner' Kommandos help, nodeinfo und v4up  (teilweise FFM-Eigenentwicklung)
  - 'ffffm-ebtable-net-rules' optimierter Paketfilter (FFM-Eigenentwicklung)

#### Known Issues
- opkg-Pfad zum globalem OpwnWrt Repository ist lediglich IPv4

### ffmstable-1.10
- Gebaut Ende 2015
- Gluon 2014.1
- OpenWrt Barrier Breaker 

