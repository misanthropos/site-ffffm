## Frankfurter Development Version

### v2.4.6.8-dev-0828
- Erstellt am 28.08.2018
- Basis ist Gluon 2018.1.1
  - Bugfix: "Konfigurationsverlust nach Update" behoben
  - Linux-Kernel aktualisiert auf v4.4.148
- Gluon-Änderungshistorie siehe: [Gluon-Doku zur v2018.1.1](https://gluon.readthedocs.io/en/v2018.1.x/releases/v2018.1.1.html)

#### Bekannte Probleme
- respondd-module-airtime wird noch nicht eingesetzt, da es Probleme in Kombination mit der aktuellen Map gibt.

### v2.4.6.5-dev-0724
- Erstellt am 24.07.2018
- Gluon 2018.1
- Lokale Anpassungen
  - site.conf umgestellt
  - site.mk umgestellt 
- Domain-Seed generiert: f3a8cea77298c398d3edca83e8f786637dc6533d94f45a9401691ff8c1be7e22
  - Aus Mesh-Kompatibilitätsgründen aber VxLAN noch deaktiviert
- 802.11s testweise parallel neben ibss-AP aktiviert
  - Neue 802.11s mesh-ID: "802.11s:FFFFM:BATMAN"
- Neue Gluon Filter-Packages aktiviert
- alle FFFFM-eigene Packages sind für den Einsatz unter Gluon 2018.x vorbereitet
 
#### Bekannte Probleme
- respondd-module-airtime wird noch nicht eingesetzt, da es Probleme in Kombination mit der aktuellen Map gibt.


### v2.2.1.9-dev-0115
- Erstellt am 15.01.2018
- Gluon 2017.1.x vom 08.01.2017
- site.conf: Anpassungen der Links für 'autoupdate' und 'opkg'

### v2.2.1.6-dev-0114
- Erstellt am 14.01.2018
- Gluon 2017.1.x vom 08.01.2017
- site.conf: Anpassungen an DNS-Cache

### v2.2.1.5-dev-0111
- Erstellt am 11.01.2018
- Gluon 2017.1.x vom 08.01.2017
- site.conf: IPv6 sollte jetzt Client-seitig richtig funktionieren

### v2.2.1.4-dev-0108
- Erstellt am 08.01.2018
- Gluon 2017.1.x vom 08.01.2017
- Neu: PoE support for UBNT EdgeRouter X (SFP)

### v2.2.1.3-dev-1230
- Erstellt am 30.12.2017
- Gluon 2017.1.4 mit BROKEN=1
- Kleine Lede-Optimierungen an den frankfurter Packages

### v2.2.1.1-dev-1210
- Erstellt am 10.12.2017
- Umstellung auf LEDE
- Gluon 2017.1.4 mit BROKEN=1

### v2.1.6.1-dev-0803
- Erstellt am 03.08.2017
- Gluon 2016.2.6 mit BROKEN=1

### v2.1.4.2-dev-0623
- Gebaut 23.06.2017
- Basis ist Gluon 2016.2.6
- Nur noch eine einzige fastd-Verbindungen zu den Supernodes.

### v2.1.4.1-dev-0516
- Gebaut 17.05.2017
- Basis ist die v2.1.4-test-0514
- fastd-Verbindungen zu den Supernodes jetzt hoffentlich über IPv4 und IPv6 möglich.

### v2.0.7.3-dev-0219
- Gebaut 19.02.2017
- Umstellung fastd-MTU (1312 und 1374 Byte) jetzt komplett
- Bug-Fix: ffffm-ath9k-broken-wifi-workaround
- Dieses Firmwarerelease ist ein Kanditat für die neue Stable

### v2.0.7.2-dev-0214
- Gebaut 14.02.2017
- Basis ist Gluon 2016.2.3
- Zur Sicherheit alle fastd-Ports geöffnet (10001-10004)
- fastd-auto-MTU-Size sind jetzt 1312 Byte und 1374 Byte
- Bug-Fix: ffffm-bind-button
- Bug-Fix: ffffm-fastd-auto-mtu

### v2.0.6.2-dev-0204
- Gebaut 04.02.2017
- Neue Fastd-MTU wegen Unitymedia
- Package ffffm-bind-button optimiert 

### v2.0.6.1-dev-0128
- Gebaut 28.01.2017
- Package ffffm-restart-respondd wieder entfernt
- Konfigmodus nur noch in deutsch

### v2.0.5.4-dev-0115
- Gebaut 15.01.2017
- Neues Package ffffm-restart-respondd hinzu

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.5.3-dev-0113
- Gebaut 13.01.2017
- Neues Package ffffm-bind-button hinzu
- Package gluon-Next-Node wieder eingebunden

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.5.1-dev-0108
- Gebaut 08.01.2017
- Allow NAT64 and only siteConfig.additional_prefix6

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4
- Next-Node funktioniert nicht

### v2.0.3.4-dev-1229
- Gebaut 29.12.2016
- site.conf wegen neuem Package gluon-dns-cache angepasst

### v2.0.3.1-dev-1229
- Gebaut 29.12.2016
- Neues Package gluon-dns-cache eingebunden (anstelle von ffffm-dns-cache)

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.2.3-dev-1228
- Gebaut 28.12.2016
- Fix: Autoupdate bei Up-Link-Knoten wieder möglich. 

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.2.1-dev-1222 (gesperrt)
- Gebaut 22.12.2016
- Freigegebenes Gluon v2016.2.2 + TL-WR940N v4 Unterstützung
- Region-Code abhängige Images werden jetzt als Europa Versionen gebaut
- Das Package 'ffffm-disable-80211b' wurde wegen neuem Gluon-Main-Package entfernt.
- Vorbereitung erweitertes IPv6 für Clients 
- Anzahl Backbone-Supernodes von 20 auf 10 reduziert
- Wegen dem DL-Server-Umzug, den Link auf den Updateserver angepasst 
- Für einige Router mit mehr als 4MB Flash gibt es jetzt:
  - Unterstützen von vielen USB-NICs (falls USB-Port vorhanden)
  - Unterstützung USB-Speicher (falls USB-Port vorhanden)
  - 'nano' als zusätzlichen Editor
  - tcpdump-mini
- Images für ath10k-Devices werden gebaut
- Autoupdate wird automatisch aktiviert

#### Known Issues
- Auf Up-Link-Knoten kein Autoupdate mehr möglich. Die DNS-Namensauflösung funktioniert dort nicht. 
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v2.0.0.1-dev-11120137 (gesperrt)  
- Gebaut 12.11.2016
- Basis: Frankfurter v2.0-stable-34 in Kombination mit freigegebenem Gluon **v2016.2.1**
- Package "ffffm-disable-80211b" entfernt. Diese wird jetzt über die site.conf realisiert.
- Package "ffffm-banner" optimiert. "v4up" funktioniert wieder. Der Anzeigtest von "nodeinfo" ist jetzt etwas strukturierter.
- USB-Unterstützung bei einigen Routern mit mehr als 4MB Flash. Datei-Sticks und einige NICs werden unterstützt. Siehe https://github.com/freifunk-ffm/site-ffffm/blob/dev/specific_site.mk

#### Known Issues
- Auf Up-Link-Knoten kein Autoupdate mehr möglich. Die DNS-Namensauflösung funktioniert dort nicht. 
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.3.5-dev-xxx
- Gebaut xx.yy.2016
- Dieses ist eine "Raus aus dem Dev-, rein in den Stable-Branch" Firmware
- Autoupdate wird aktiviert
- Autoupdate-Branch wird automatisch auf "stable" gesetzt

### v1.10.3.4-dev-166
- Gebaut 13.07.2016
- fast Identisch mit [Test v1.10.4-test-96](https://github.com/freifunk-ffm/site-ffffm/tree/test#v1104-test-96-noch-nicht-automatisch-ausgerollt), das Package ath9k-broken-wifi-workaround liegt jedoch in neuerer Version vor.

### v1.10.3.2-dev-154
- Gebaut 26.05.2016
- Basis: freigegebenes Gluon **v2015.1.2**
- Neues Package ffffm-airtime-v2015.1.x eingebaut

#### Known Issues
- Der Befehl 'help' (aus ffffm-banner) liefert nicht die erwünschte Ausgabe.
- Kein opkg-Pfad zu Build spezifischen Kernelmodulen vorhanden.


### v1.10.3.1-dev-150
- Gebaut 18.05.2016
- Basis: freigegebenes Gluon **v2015.1.2**
- Konfiguration und Packages von ffmstable-1.10 übernommen

Änderungen gegenüber der Firmware ffmstable-1.10 (Gluon v2015.1.2):

 - Neue Hardwareunterstützung
   - WR841N/ND v10/v11
   - WR1043ND v3
   - CPE210/510 v1.1 
 - site.conf: Anpassungen bezüglich IPv6
 - site.conf: Mesh-VPN per default aktiv
 - Package 'ffffm-ebtable-net-rules' hinzu
 - Package 'ffffm-keep-radio-channel' hinzu
 - Package 'ffffm-banner' hinzu
 - Konfigurationsmodus jetzt mehrsprachig. 

#### Known Issues
- Der Befehl 'help' (aus ffffm-banner) liefert nicht die erwünschte Ausgabe.
- Kein opkg-Pfad zu Build spezifischen Kernelmodulen vorhanden.

### v1.10.2.1-dev-142
- Gebaut 29.04.2016
- Freigegebenes Gluon v2016.1.4
- Anpassung WLAN-Treiber: https://gluon.readthedocs.io/en/v2016.1.4/releases/v2016.1.4.html

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.1.2-dev-120
- Gebaut 02.04.2016
- Freigegebenes Gluon v2016.1.3

#### Known Issues
- Das WLAN hängt sich bei einigen wenigen Routern manchmal auf
- opkg-Pfad zum OpenWrt Repository ist IPv4

### v1.10.1.1-dev-118
- Gebaut 22.03.2016
- Bugfix: Konfiguration der Auto-MTU-Erkennung 
- Neues Package 'ffffm-banner' hinzu

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist noch IPv4


### ffmdev-3.117
- Gebaut 12.03.2016 
- Freigegebenes Gluon v2016.1.2
 
#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist noch IPv4
- Die Auto-MTU-Erkennung funktioniert wegen Fehlkonfiguration nicht.
- Der Aufruf fremder Router-Statusseiten bereitet manchmal mit OS X Rechnern Probleme

### ffmdev-3.114
- Gebaut 11.03.2016 
- Freigegebenes Gluon v2016.1.1
- 'Autoupdate-Branch' wieder auf 'dev' gesetzt 
- 'next_node.ipv6' ist jetzt fddd:5d16:b5dd:ffff::1
- 'prefix6' jetzt 'fddd:5d16:b5dd:0::/64'
- opkg-Pfad der Kernel-Module zeigt nun auf http://1.updates.services.ffffm/dev/sysupgrade/modules/...
- Auto-MTU Korrektur: Eine neu erkannte MTU wird jetzt wieder sofort übernommen

#### Known Issues
- opkg-Pfad zum OpenWrt Repository ist noch IPv4

### ffmdev-3.106
- Package ffffm-autoupdater-use-site-conf-branch eingebunden (FFM-Eigenentwicklung)
- site.conf: 'Autoupdate-Branch' temporär auf 'test' gesetzt 
- Auto-MTU: Wegen x86-Problemen wird jetzt eine neu erkannte MTU erst nach einem Reboot übernommen

#### Known Issues
- opkg-Pfade sind noch IPv4

### ffmdev-3.101
- fastd Ports jetzt wieder 10001 und 10002 (fastd-Links mit grosser MTU jetzt vorhanden)
- Typo in Konfig-Modus-Texten (DE/EN)
- Role: Outdoor Node hinzu
- Build spezifische opkg-Module werden auf Frankfurter Server abgelegt
- opkg-Pfade hinzu

#### Known Issues
- Auto-MTU funktioniert nach einem Update nicht immer beim x86-Image
- opkg-Pfade sind noch IPv4

### ffmdev-3.89

- Gebaut 02/2016
- Freigegebenes Gluon v2016.1
- Neu: Per uci eingestellte WLAN-Kanäle sind jetzt Update-fest (kein Abhängen von Mesh-Wolken durch Auto-Upgrade) (FFM-Eigenentwicklung)
- Futro CF-Karten Unterstützung

### ffmdev-3.84
- Gebaut 01/2016
- Gluon Entwicklungsstand Master-Branch von 01/2016
- Neu: Auto-MTU (FFM-Eigenentwicklung)(z.Z. inkl. GUI)
- fastd-Connection-Limit wieder auf 2 angehoben
- Das Package ffffm-ebtables-net-rules wurde entfernt (Teilweise zu scharfe Regeln -> Diskussionsbedarf)
- fastd Ports auf 10000 und 10001 (mangels fastd-Links mit grosser MTU)

### ffmdev-3.83
- Gebaut 11/2015
- Gluon Entwicklungsstand Master-Branch von 11/2015
- fastd-Connection-Limit von 2 auf 1 reduziert
- Langsame Mesh-VPN Verschlüsselung 'salsa2012+gmac' entfernt
- Neu: 'Node-Role' hinzu (Gluon)
- neues 802.11s Mesh deaktiviert
- fastd Ports 10001 und 10002 (wegen MTU 1280/1426 Byte)
- Unterstützung von u.a. WR841N/ND v10 und CPE210/510 V1.1

### ffmdev-3.63
- Gebaut 10/2015
- Basis war der damalige Gluon Master-Branch von 10/2015
- Konfig-Modus in den Sprachen DE und EN
- Keine Anzeige des Router-Keys am Ende der Router-Konfiguration
- radvd für öffentliches IPv6-Netz deaktiviert und für ULA-Netz aktiviert
- Verschlüsselung von Mesh-VPN kann abgeschaltet werden (Gluon)
- Wifi-Konfigurationspaket (Gluon)
- Mesh-VPN ist standardmäßig aktiv

<br>
<br>

## Bekannte Probleme
Mit Gluon v2016.1 ist das Aktivieren des Konfigurationsmoduses etwas hakelig. Die optische Reboot-Rückmeldung über die LEDs kommt erst nach ca. 10 Sekunden.

<br>
<br>
<br>

## Git cheat-sheet 
### Aktuellen gluon-branch nach dev ziehen:
1. git fetch freifunk-gluon
2. git log freifunk-gluon/master
3. git checkout $whatevercommit
4. git branch -d dev
5. git checkout -b dev
6. git push --set-upstream origin dev

Bei Bedarf mit cherry-pick eigene commits wieder reinziehen

