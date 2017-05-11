## Frankfurter Test Version

### v2.1.3-test-0511
- Gebaut 11.05.2017
- Das Package ffffm-additional-wifi-json-info wurde entfernt (wegen Problemen mit der Map)
- TL-WR841N/ND v12 Unterstützung

### v2.1.2-test-0509
- Gebaut 09.05.2017
- 802.11s eingebunden, aber noch standardmäßig deaktiviert
- 802.11s Mesh-SSID ist "ffffm-mesh".
- Erstmalige Unterstützung des TL-WR841 v12
- Weitere USB-NICs, PCI-NICs und SW-Tools im x86-Image

#### Known Issues
- Die Map (speziell Yanic) hat Probleme die respond-Daten der Router zu parsen

### v2.1.1-test-0502
- Gebaut 02.05.2017
- Basis ist Gluon 2016.2.5 + CVE-2016-10229 Bugfix
- Die feste fastd-MTU ist jetzt 1374 Byte groß (über Port 10003).

### v2.0.10-test-0302
- Gebaut 02.03.2017
- Entfernung des Packages ffffm-fastd-auto-mtu. Jetzt nur noch eine feste fastd-MTU von 1312 Byte.

### v2.0.9-test-0302
- Gebaut 02.03.2017
- fastd-auto-mtu: Versuch eines Bugfixes

#### Known Issues
- Der fastd-auto-mtu Bugfix wirkungslos.


### v2.0.8-test-0219
- Gebaut 19.02.2017
- Basis ist Gluon 2016.2.3
- Umstellung neu fastd-MTU jetzt komplett (1312 und 1374 Byte)
- Bug-Fix: ffffm-bind-button
- Bug-Fix: ffffm-ath9k-broken-wifi-workaround
- Bug-Fix: ffffm-fastd-auto-mtu
- Dieses Firmwarerelease ist ein Kanditat für die neue Stable

#### Known Issues
- Unter besonderen Umständen verbindet sich ein Router nach einem Update nicht mehr mit dem Netz. Ein Reboot löst das einmalige Vergalten.

### v2.0.7-test-0128
- Gebaut 28.01.2017
- Package ffffm-restart-respondd wieder entfernt
- Konfigmodus nur noch in deutsch

### v2.0.6-test-0115
- Gebaut 15.01.2017
- Neues Package ffffm-restart-respondd hinzu
- Neues Package ffffm-bind-button hinzu

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.5-test-0108
- Gebaut 08.01.2017
- Freigegebenes Gluon v2016.2.2 + TL-WR940N v4 + TL-WR1043ND v4 Unterstützung
- Experementelles Package gluon-disable-wifi-button eingebunden
- Weitere FFFFM IPv6 Prefixes hinzu (Magnus)

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.4-test-1230
- Gebaut 30.12.2016
- Neues Package gluon-dns-cache eingebunden (anstelle von ffffm-dns-cache)

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.3-test-1227
- Gebaut 27.12.2016
- Fix: Autoupdate bei Up-Link-Knoten wieder möglich. 

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.2-test-1221 (gesperrt)
- Gebaut 21.12.2016
- Freigegebenes Gluon v2016.2.2 + TL-WR940N v4 Unterstützung
- Region-Code abhängige Images werden jetzt als Europa Versionen gebaut
- Das Package 'ffffm-disable-80211b' wurde wegen neuem Gluon-Main-Package entfernt.
- Das Package "ffffm-banner" optimiert. 
- Vorbereitung erweitertes IPv6 für Clients 
- Anzahl Backbone-Supernodes von 20 auf 10 reduziert
- Wegen dem DL-Server-Umzug, den Link auf den Updateserver angepasst 
- Für einige Router mit mehr als 4MB Flash gibt es jetzt:
  - Unterstützung von vielen USB-NICs (falls USB-Port vorhanden)
  - Unterstützung von USB-Speichermedien (falls USB-Port vorhanden)
  - 'nano' als zusätzlichen Editor
  - tcpdump-mini
- Images für ath10k-Devices werden gebaut
- Autoupdate wird automatisch aktiviert

#### Known Issues
- Auf Up-Link-Knoten kein Autoupdate mehr möglich. Die DNS-Namensauflösung funktioniert dort nicht. 
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.1-test-1219 (gesperrt)
- Gebaut 19.12.2016
- Freigegebenes Gluon v2016.2.2 + TL-WR940N v4 Unterstützung
- Autoupdate wird automatisch aktiviert

#### Known Issues
- Auf Up-Link-Knoten kein Autoupdate mehr möglich. Die DNS-Namensauflösung funktioniert dort nicht. 
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.6-test-99
- Gebaut 11.08.2016
- Dieses ist eine "Raus aus dem Test-, rein in den Stable" Firmware
- Autoupdate-Branch wird automatisch auf "stable" gesetzt
- Autoupdate wird automatisch aktiviert

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.5-test-98
- Gebaut 04.08.2016
- Bugfix: Das aktuelle und abgeschwächtes Package 'ffffm-ath9k-broken-wifi-workaround' wird verwendet 
- Package 'ffffm-diasable-80211b' hinzu
- Alfred entfernt

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4
- Als Gluon-Version wird fälschlicherweise 2015.1.5 ausgegeben. Es ist aber 2016.1.5.
 
### v1.10.4-test-96
- Gebaut 06.07.2016
- Neues Package 'ffffm-enlarge-dns-cache' hinzu
- Bugfix: Updateserver neu verlinkt, auf http://updates.services.ffffm/test/sysupgrade

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4
- Das Package 'ffffm-ath9k-broken-wifi-workaround' erzeugt evtl. zu häufige WLAN-Neuverbindungen der Clients


### v1.10.4-test-92 (nicht automatisch ausgerollt)
- Gebaut 01.07.2016
- Freigegebenes Gluon v2016.1.5
- Neues Package 'ffffm-ath9k-broken-wifi-workaround' hinzu
- Neues Package 'ffffm-additional-wifi-json-info' hinzu
- Die Packages 'gluon-luci-node-role', 'ffffm-luci-switchconfig' und 'gluon-luci-mesh-vpn-fastd' entfernt
- Updateserver neu verlinkt auf http://updates.services.ffffm/stable/sysupgrade

#### Known Issues
- Der Links zu dem Updateserver ist falsch gesetzt. Eine Aktualisierung auf eine neuere Version ist wohl nur noch händisch möglich! :o(
- opkg-Pfad zum OpenWrt Repository ist IPv4
 

### v1.10.3-test-83 (nicht automatisch ausgerollt)
- Gebaut 05.05.2016
- Freigegebenes Gluon v2016.1.4
- Unterstützung von WR841N/ND v11
- Typo in i18n/de.po und i18n/en.po

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.3-test-82 (nicht automatisch ausgerollt)
- Gebaut 30.04.2016
- Freigegebenes Gluon v2016.1.4
- Anpassung WLAN-Treiber: https://gluon.readthedocs.io/en/v2016.1.4/releases/v2016.1.4.html

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.2-test-78
- Gebaut 14.04.2016
- Freigegebenes Gluon v2016.1.3
- 'next_node.ipv6' ist jetzt fddd:5d16:b5dd::1
- Das Package ffffm-ebtables-net-rules wieder aktiviert
- Neues Package 'ffffm-banner' hinzu
- Konfigmode-Seite "Auto-MTU" entfernt
- Bugfix: Auto-MTU-Erkennung bei x86-Images 

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpenWrt Repository ist IPv4

### ffmtest-3.62
- Gebaut 02/2016
- Neu: Per uci eingestellte WLAN-Kanäle sind jetzt Update-fest (kein Abhängen von Mesh-Wolken durch Auto-Upgrade) (FFM-Eigenentwicklung)
- Neu: Auto-MTU (FFM-Eigenentwicklung)(z.Z. inkl. GUI)
- Futro CF-Karten Unterstützung
- Typo in Konfig-Modus-Texten (DE/EN)
- Build spezifische opkg-Module werden auf Frankfurter Server abgelegt
- opkg-Pfade hinzu

#### Known Issues
- Auto-MTU funktioniert nach einem Update nicht immer beim x86-Image
- opkg-Pfade sind noch IPv4


### ffmtest-3.27
- Gebaut 02/2016
- Freigegebenes Gluon v2016.1 mit Funktionsstand von fffmdev-3.89
- fastd Ports jetzt wieder 10001 und 10002 (fastd-Links mit grosser MTU jetzt vorhanden)
- Wegen der Übersichtlichkeit wurden auf der Konfig-Seite einige Tabs entfernt (hier gibt es noch Diskussionsbedarf)

### ffmtest-3.10
- Gebaut 11/2015
- Basis war ffmstable-1.10 (Gluon 2014.1)
- Konfig-Modus jetzt in den Sprachen DE und EN
- Verschlüsselung von Mesh-VPN kann abgeschaltet werden (Gluon)
- Wifi-Konfigurationspaket (Gluon)
- Mesh-VPN ist standardmäßig aktiv



## Bekannte Probleme
Mit Gluon v2016.1.x ist das Aktivieren des Konfigurationsmoduses etwas hakelig. Die optische Reboot-Rückmeldung über die Router-LEDs kommt erst nach ca. 10 Sekunden.


