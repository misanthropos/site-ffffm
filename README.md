### Firmware Versionen
Für die Frankfurter Firmware-Varianten werden die unten aufgeführten Bezeichnungen verwendet.
Firmware-Varianten und Git-Branches haben zur Vereinfachung den gleichen Namen bekommen.

**stable:**

* Bezeichnungsschema: 'a.b-stable-b'
* SSID: 'ffm.freifunk.net'
* Stabiles Gluon Release
* **Diese Firmware sollte standardmäßig in Frankfurt verwendet werden.**


**test:**

* Bezeichnungsschema: 'a.b.c-test-d'
* SSID: 'ffm.freifunk.net'
* Vorab-Feldtest stabiler Gluon Releases
* Diese Firmware kann noch fehlerbehaftet sein. Bitte nur mit Bedacht verwenden!

**dev:**

* Bezeichnungsschema: 'a.b.c.d-dev-f'
* SSID: 'dev.ffm.freifunk.net'
* Entwicklungszweig(e) aktueller oder zukünftiger Gluon Releases (kein Gluon Master!)
* Frankfurter Entwicklungs-Bereich
* System- und Integrationstest unter Realbedingungen
* Diese Firmware ist als nicht funktionsfähig einzustufen. Bitte nicht verwenden!

**master:**

* Dummy Branch (wird nicht verwendet)

---

# Eine eigene Firmware bauen

---

## Beispiel anhand der Frankfurter Stable-Firmware

    
Wenn Du Dir z.B. eine eigene **'stable'**-Firmware für das Frankfurter Freifunk-Netz bauen möchtest, dann gehe wie folgt vor:

1) Lesen von http://gluon.readthedocs.io/en/latest/user/getting_started.html

2) Alle Dependencies aus o.g. Dokument müssen auf deinem PC installiert sein.

3) Clonen des Frankfurter Gluon 'stable' Branches in das Verzeichnis ./gluon :

```
   git clone https://github.com/freifunk-ffm/gluon.git -b stable gluon
```

4) Clonen der Frankfurter Site-Konfiguration in das Verzeichnis ./gluon/site

```
   cd gluon
   git clone https://github.com/freifunk-ffm/site-ffffm.git -b stable site 
```

5) Ggf. in der Datei **site.mk** etwas rumschrauben

   ```
   cd site
   nano site.mk
   cd ..
   ```

6) Veranlassen, das alle notwendigen Source-Packete geholt werden (OpenWrt, Frankfurter Packages etc.)

```
   make update
```

7) Daran denken, dass ein Build für ein Hardware-Target in etwa **15 GByte** Platz auf deinem Datenträger benötigt. Es gibt mehrere Hardware-Targets. 

   * ar71xx-generic
   * ar71xx-nand
   * mpc85xx-generic
   * x86-generic
   * x86-kvm_guest
   * x86-64
   * x86-xen_domu
   * brcm2708-bcm2708
   * brcm2708-bcm2709
   * sunxi #BROKEN
   * ar71xx-mikrotik #BROKEN
   * sunxi #BROKEN
   * ramips-mt7621 #BROKEN
   * ramips-rt305x #BROKEN

8) Den Bau-Prozess anschmeissen für z.B. ein ar71xx-generic Hardware-Target

```
   make GLUON_TARGET=ar71xx-generic -j4 V=s  BROKEN=1
```

   * -j4 bedeutet, es werden bis zu vier Make-Threads verwendet.<br> 
   * V=s erzeugt eine ausführliche Bildschirmausgabe.<br>
   * BROKEN=1 bedeutet, dass auch Experimental-Firmware für bisher nicht ausreichend getestete Routermodelle gebaut wird.<br>

9) Wenn alles gut ging, findest Du nach ca. 30-120 Minuten im Verzeichnis **./output** die Target-Binaries deiner eigenen Frankfurter 'Homebrew-stable' Firmware.

---
