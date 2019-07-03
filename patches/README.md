## Lokale Site-Patches

### Anwendung
Die Patch-Anwendungsaufrufe müssen direkt im Gluon-Ordner durchgeführt werden.

Die Patches müssen im Build-Ablauf vor dem Befehl

    gluon update
angewendet werden.


### Geübte Git-User
Geübte Git-User konnen die hier enthaltenen Patches einzeln mittels der folgenden Befehlsfolge anwenden: 

    git -c user.name='Frankfurter FirmwareReleaseBuilder' -c user.email='ffffm-FRB@void.example.com' -c commit.gpgsign=false am --whitespace=nowarn --committer-date-is-author-date ./site/patches/NameDesPatches.patch

Mittels der folgenden Befehlsfolge werden alle Patches in einem Rutsch angewendet:
 
    git -c user.name='Frankfurter FirmwareReleaseBuilder' -c user.email='ffffm-FRB@void.example.com' -c commit.gpgsign=false am --whitespace=nowarn --committer-date-is-author-date ./site/patches/*.patch

Falls es zu Problemen kommt, kann folgende Befehlszeile recht hilfreich sein:

    git -c user.name='Frankfurter FirmwareReleaseBuilder' -c user.email='ffffm-FRB@void.example.com' -c commit.gpgsign=false am --abort

Wenn nichts mehr geht, dann hilft:

    git reset --hard origin/GluonBranchName
    

### Ungeübte Git-User 
Ungeübte Git-User können die hier enthaltenen Patches einzeln mittels der folgenden Befehlszeile anwenden:

    patch -N -p1 -i ./site/patches/NameDesPatches.patch 
