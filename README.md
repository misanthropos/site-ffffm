## Frankfurter Test Version 
### v1.10.2-test-78
- Gebaut 14.04.2016
- Freigegebenes Gluon v2016.1.3
- 'next_node.ipv6' ist jetzt fddd:5d16:b5dd::1
- Neues Package 'ffffm-banner' hinzu
- Konfigmode-Seite "Auto-MTU" entfernt
- Bugfix: Konfiguration der Auto-MTU-Erkennung

#### Known Issues
- opkg-Pfad zum OpwnWrt Repository ist IPv4

### ffmtest-3.62
- Gebaut 02/2016
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


