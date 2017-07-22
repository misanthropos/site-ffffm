## Frankfurter Stable Version

### v2.2-stable-0721
 - Erstellt 21.07.2017
 - Basis Gluon 2016.2.6 -> Änderungshistorie: [Gluon 2016.2.4](http://gluon.readthedocs.io/en/latest/releases/v2016.2.4.html), [Gluon 2016.2.5](http://gluon.readthedocs.io/en/latest/releases/v2016.2.5.html), [Gluon 2016.2.6](http://gluon.readthedocs.io/en/latest/releases/v2016.2.6.html)
 - Unterstützung neuer Hardware: TL-WR841N/ND v12
 - Entfernung des Packages ffffm-fastd-auto-mtu. Jetzt nur noch eine feste fastd-MTU
 - Die fastd-MTU hat eine Größe von 1374 Byte (über Port 10003).
 - Weitere USB-NICs, PCI-NICs und SW-Tools für das x86-Image
 - Es wird jetzt der DNS-Cache aus dem Gluon-Core verwendet
 - IP-Adresse des DNS-Caches wurde angepasst

### v2.1-stable-0220
 - Erstellt 20.02.2017
 - Basis Gluon 2016.2.3 -> Änderungshistorie: [Gluon 2016.2](http://gluon.readthedocs.io/en/latest/releases/v2016.2.html), [Gluon 2016.2.1](http://gluon.readthedocs.io/en/latest/releases/v2016.2.1.html), [Gluon 2016.2.2](http://gluon.readthedocs.io/en/latest/releases/v2016.2.2.html), [Gluon 2016.2.3](http://gluon.readthedocs.io/en/latest/releases/v2016.2.3.html)
 - Unterstützung neuer Router-Hardware (z.B. Archer C5/C7, TL-WR841ND v11 EU Version, TL-WR1043ND v4, TL-WR842ND v3, TL-WR940N v4, TL-WA901ND v4, TL-WR710N v2.1, CPE210/510 EU Version, WA801ND v3, UniFi AP AC Lite/Pro, Raspberry Pi 1 und 2)
 - Region-Code abhängige Images werden jetzt als Europa-Versionen gebaut
 - Images für ath10k-Devices werden gebaut
 - x86-Images nur noch als x86-generic und x86-64. Da ist jetzt alles Notwendige zur Virtualisierung dabei ([siehe hier](http://gluon.readthedocs.io/en/v2016.2.3/user/x86.html)). 
 - Um Airtime zu sparen wurde 80211b deaktiviert
 - Vorbereitung erweiterte IPv6-Nutzung für Clients
 - Durchsatzoptimierungen bei Unitymedia-Uplinks mittles größerer fastd-MTUs (1312 und 1374 Byte)
 - Router-Konfigmodus nur noch auf deutsch
 - Neues Package [gluon-dns-cache](https://github.com/freifunk-ffm/packages/tree/master/gluon-dns-cache) (FFM-Eigenentwicklung) anstelle von ffffm-enlarge-dns-cache hinzu.
 - Neues Package [ffffm-button-bind](https://github.com/freifunk-ffm/packages/tree/master/ffffm-button-bind) hinzu (FFM-Eigenentwicklung)
 - Package [ffffm-ath9k-broken-wifi-workaround](https://github.com/freifunk-ffm/packages/tree/master/ffffm-ath9k-broken-wifi-workaround) wurde optimiert
 - Package [ffffm-banner](https://github.com/freifunk-ffm/packages/tree/master/ffffm-banner) wurde verbessert (optimierung an den Befehlen "nodeinfo" und "v4up")
 - Für einige Router mit mehr als 4MB Flash gibt es jetzt:
   - Unterstützung von einigen USB-NICs (falls USB-Port vorhanden)
   - Unterstützung von USB-Speichermedien (falls USB-Port vorhanden)
   - 'nano' als zusätzlichen Editor
   - tcpdump-mini
 - opkg sollte mit angepasster Backbone-Infrastruktur demnächst auch auf IPv6-Mesh-Routern funktionieren 
 
### v2.0-stable-34
- Erstellt 31.07.2016
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
- Das Skript 'v4up' funktioniert nicht mehr

### ffmstable-1.10
- Erstellt Ende 2015
- Gluon 2014.1
- OpenWrt Barrier Breaker 

