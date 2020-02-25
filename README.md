### Freifunk-Firmware in Frankfurt
Für die Frankfurter Firmware-Varianten werden die unten aufgeführten Bezeichnungen verwendet.  
Firmware-Varianten und Git-Branches haben zur Vereinfachung den gleichen Namen bekommen.

**stable:**

* Bezeichnungsschema: 'a.b(.c)-stable-b'
* SSID: 'ffm.freifunk.net'
* Stabiles Gluon Release
* **Diese Firmware sollte standardmäßig in Frankfurt verwendet werden.**


**test:**

* Bezeichnungsschema: 'a.b.c-test-d'
* SSID: 'ffm.freifunk.net'
* Vorab-Feldtest stabiler Gluon Releases
* Diese Firmware kann noch fehlerbehaftet sein. Bitte nur mit Bedacht verwenden!

**next:**

* Bezeichnungsschema: 'a.b.c-test-d'
* SSID: 'ffm.freifunk.net'
* Vorab-Feldtest stabiler Gluon Releases
* Diese Firmware kann noch fehlerbehaftet sein. Bitte nur mit Bedacht verwenden!
* Wie Test, basiert aber auf stable mit gemeinsamer History

**dev:**

* Bezeichnungsschema: 'a.b.c.d-dev-f'
* SSID: 'dev.ffm.freifunk.net'
* Entwicklungszweig(e) aktueller oder zukünftiger Gluon Releases (kein Gluon Master!)
* Frankfurter Entwicklungs-Bereich
* System- und Integrationstest unter Realbedingungen
* Diese Firmware ist als nicht funktionsfähig einzustufen. Bitte nicht verwenden!

**christf_next:**

* aktuelle Babel-Entwicklung

**n_babel-work:**

* veralterte Babel-Entwicklung

**master:**

* Dummy Branch (wird nicht verwendet)

---

# Eine eigene Frankfurter Firmware bauen

---

## Beispiel anhand der Frankfurter Test-Firmware

    
Wenn Du Dir z.B. eine eigene **'Test'**-Firmware für das Frankfurter Freifunk-Netz selber bauen möchtest, dann gehe wie folgt vor:

1) Aktuell (Stand 02/2020) basiert die Test-Firmware-Konfiguration auf dem Gluon-Framework v2020.1.x, daher evtl. etwas einlesen -> https://gluon.readthedocs.io/en/v2020.1.x

2) Eine Linux-Build-Maschine bereitstellen, möglichst mit Debian. Daran denken, dass ein Build für **ein** Hardware-Target bis zu 15 GByte freien Speicher auf dem Datenträger der Build-Maschine benötigt. Sollen **alle** Hardware-Targets gebaut werden, so werden ca. 140 GB benötigt (Stand 02/2020).

3) Alle Dependencies aus o.g. Gluon-Dokument müssen auf der Build-Maschine installierz sein.  
Unter Debian oder Ubuntu sollte folgendes ausreichen (Stand 02/2020):
```
   sudo apt install git subversion python build-essential gawk unzip libncurses5-dev zlib1g-dev libssl-dev wget time
```

4) Clonen des Frankfurter Gluon 'test' Branches in das Verzeichnis ./gluon :

```
   git clone https://github.com/freifunk-ffm/gluon.git -b test gluon
```

5) Clonen der Frankfurter Site-Konfiguration aus dem 'test' Branch in das Verzeichnis ./gluon/site

```
   cd gluon
   git clone https://github.com/freifunk-ffm/site-ffffm.git -b test site 
```

6) Ggf. in der Datei **site.mk** etwas rumschrauben

   ```
   cd site
   nano site.mk
   cd ..
   ```

7) Veranlassen, dass alle notwendigen Source-Packete geholt werden (OpenWrt, Frankfurter Packages etc.)

```
   make update
```

8) Es gibt mehrere Hardware-Targets: 

   * ar71xx-generic
   * ar71xx-tiny
   * ar71xx-nand
   * ath79-generic
   * brcm2708-bcm2708
   * brcm2708-bcm2709
   * ipq40xx-generic
   * ipq806x-generic
   * lantiq-xrx200
   * lantiq-xway
   * mpc85xx-generic
   * mpc85xx-p1020
   * ramips-mt7620
   * ramips-mt7621
   * ramips-mt76x8
   * ramips-rt305x
   * sunxi-cortexa7
   * x86-generic
   * x86-geode
   * x86-64

9) Den Bau-Prozess anschmeissen für z.B. ar71xx-generic Hardware-Targets

```
   make GLUON_TARGET=ar71xx-generic -j4 V=s
```

   * -j4 bedeutet, es werden bis zu vier Make-Threads verwendet.<br> 
   * V=s (optional) erzeugt eine ausführliche Bildschirmausgabe.<br>

10) Wenn alles gut ging, dann findest Du nach ca. 30-120 Minuten im Verzeichnis **./output** die Target-Binaries deiner eigenen Frankfurter 'Homebrew' Firmware.

---

# Frankfurter Build-Umgebung
Die Frankfurter Firmware Releases werden mit dem Frankfurter FirmwareReleaseBuilder gebaut ([siehe GitHub-Repo](https://github.com/freifunk-ffm/Firmware-Release-Builder)). Durch dieses Skript ist sichergestellt, dass mit unterschiedlichen Build-Umgebungen trotzdem identische Firmware-Images erzeugt werden. Der FirmwareReleaseBuilder ist weniger für den Entwicklungsprozess der Freifunk-Firmware geeignet. 
