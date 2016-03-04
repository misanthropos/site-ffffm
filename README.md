### Für die Frankfurter Firmware werden folgende Branches verwendet (site-ffffm und Gluon)
**stable:**
* Stabiles Gluon Release
* SSID: 'ffm.freifunk.net'
* Diese Firmware sollte standardmäßig in Frankfurt verwendet werden.


**test:**
* Vorab-Feldtest stabiler Gluon Releases
* SSID: 'ffm.freifunk.net'
* Diese Firmware kann noch fehlerbehaftet sein. Bitte nur mit Bedacht verwenden!

**dev:**
* Entwicklungszweig(e) aktueller oder zukünftiger Gluon Releases (kein Gluon Master!)
* Frankfurter Entwicklungs-Bereich
* Systemtest unter Realbedingungen
* SSID: 'dev.ffm.freifunk.net'
* Diese Firmware ist als nicht funktionsfähig einzustufen. Bitte nicht verwenden!

**master:**
* Dummy Branch (wird nicht verwendet)

---

# Eine eigene Firmware bauen

Wenn Du Dir z.B. eine eigene **'dev'**-Firmware für das Frankfurter Freifunk-Netz bauen möchtest, dann gehe wie folgt vor:

1) Lesen von https://gluon.readthedocs.org/en/v2016.1/user/getting_started.html

2) Alle Dependencies aus o.g. Dokument müssen auf deinem PC installiert sein.

3) Clonen des Frankfurter Gluon 'dev' Branches in das Verzeichnis ./gluon :
```
   git clone https://github.com/freifunk-ffm/gluon.git -b dev gluon
```
4) Clonen der Frankfurter Site-Konfiguration in das Verzeichnis ./gluon/site
```
   cd gluon
   git clone https://github.com/freifunk-ffm/site-ffffm.git -b dev site 
```
5) Ggf. in der Dateie **site.mk** etwas rumschrauben
   ```
   cd site
   nano site.mk
   cd ..
   ```
6) Veranlassen, das alle notwendigen Source-Packete geholt werden (OpenWrt, Frankfurter Packages etc.)
```
   make update
```

7) Daran denken, dass ein Build für ein Hardware-Target in etwa 10GByte Platz auf deinem Datenträger benötigt. Es gibt z.Z. sieben unterschiedliche Hardware-Targets. 
   * ar71xx-generic
   * ar71xx-nand
   * mpc85xx-generic
   * x86-generic
   * x86-kvm_guest
   * x86-64
   * x86-xen_domu

8) Den Bau-Prozess anschmeissen für z.B. ein ar71xx-generic Hardware-Traget
```
   make GLUON_TARGET=ar71xx-generic -j4 V=s
```
-j4 bedeutet, es werden 4 Make-Threads verwendet. V=s erzeugt eine ausführliche Bildschirmausgabe

9) Wenn alles gut ging, findest Du nach ca. 30-120 Minuten im Verzeichnis **./output** die Target-Binaries deiner eigenen Frankfurter 'dev' Firmware.

---
