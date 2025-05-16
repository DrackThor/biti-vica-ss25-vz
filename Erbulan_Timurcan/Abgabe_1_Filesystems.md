# Filesystems (FAT, NTFS, ext4, btrfs)

Was ist ein Dateisystem und in welchem Kontext wird es verwendet?
Ein Dateisystem ist ein Ablagesystem auf einem Speichermedium, das das Schreiben, Suchen, Lesen, Speichern, Verändern und Löschen von Dateien auf eine spezifische Weise strukturiert und organisiert. 
Wichtig ist dabei, dass Dateien infolge der Strukturierung möglichst fehlerfrei zu identifizieren sind und Anwender schnellstmöglichen Zugriff auf ihre Dateien bekommen. 

Außerdem definieren Dateisysteme beispielsweise folgende Eigenschaften:

- Dateinamen-Konventionen
- Dateiattribute
- Zugriffskontrolle(n)

Dateisysteme sind zudem eine wichtige operative Komponente, die als Schnittstelle zwischen dem Betriebssystem und allen angeschlossenen Laufwerken (intern und extern, z. B. über einen USB-Anschluss) fungiert.
Dateisysteme gelangen durch eine Formatierung auf einen Datenträger, wobei gekaufte Speichermedien heute bereits formatiert ausgeliefert werden. Früher war es üblich, dass neue Datenträger von Anwendern noch für die Dateiablage und -verwaltung vorbereitet werden mussten.

# Technische Funktionsweise
Ein Dateisystem kann als Schicht zwischen Betriebssystem (Windows, Mac, Unix) und den Anwendungsprogrammen gesehen werden. Das Betriebssystem und die Anwendungen greifen per Klartextnamen (also dem Dateinamen) auf Dateien zu, erst im Dateisystem wird dieser (abstrakte) Dateiname in eine physische Speicheradresse umgesetzt.



# Gängige Dateisysteme
Es gibt zwar mittlerweile recht viele Dateisysteme, aber nicht alle sind weit verbreitet. Die aktuell gängigsten Systeme sind FAT16, FAT32, exFAT und NTFS (Windows) sowie 
HFS+ und APFS (macOS/Mac OS X). Linux nutzt derzeit u. a. ext4 (Nachfolger von ext3 und ext2).

FAT (File Allocation Table)
- Das Dateisystem gibt es bereits seit 1980. Die seither veröffentlichten Varianten sind unter den Namen „FAT12“, „FAT16“ und „FAT32“ bekannt. Eine FAT-Formatierung ist ideal für die Verwaltung und den Austausch kleinerer Datenmengen. Das FAT-Dateisystem ist aus heutiger Sicht eigentlich veraltet, denn selbst in der aktuellsten und leistungsfähigsten Variante (FAT32, eingeführt 1997) können Dateien maximal eine Größe von 4 Gigabyte (GB) haben. Zudem ist bei FAT32 die maximale Partitionsgröße auf 8 Terabyte (TB) beschränkt.
Trotz dieser Einschränkungen sind FAT-Formatierungen nach wie vor stark verbreitet. Sie kommen bei mobilen Wechseldatenträgern (externe Festplatten, USB-Sticks) und spezieller Hardware (Digitalkameras, Smartphones, Router, Fernseher, Autoradios etc.) zum Einsatz. Besonders im mobilen Bereich stehen sie für bestmögliche Kompatibilität.

NTFS (New Technology File System)
- Das Dateisystem NTFS wurde bereits 1993 mit dem Betriebssystem Windows NT eingeführt. Seit Windows Vista ist es das standardmäßige File-System für Windows-PCs. Es bietet gegenüber FAT einige Vorteile, etwa die Möglichkeit der Datenträgerkomprimierung und erhöhte Datensicherheit (z. B. durch Verschlüsselung). Eine Besonderheit von NTFS ist, dass Zugriffsrechte und Freigaben für Dateien und Ordner detailliert und umfassend definiert werden können. Dabei können Anwender Rechte für lokale und für Remote-Zugriffe per Netzwerk vergeben.

ext4
- ext4 wurde 2008 als Nachfolger von ext3 vorgestellt. Das Dateisystem ist derzeit Standard vieler Linux-Systeme (z. B. Ubuntu). Die weitreichendste Neuerung ist das Extents-Feature, das die Verwaltung großer Dateien optimiert und einer Fragmentierung effizienter vorbeugt als die Vorgänger. Unter ext4 lassen sich Partitionen beliebig vergrößern und verkleinern, und zwar im laufenden Betrieb. Die maximale Dateisystemgröße war bei ext3 auf 32 TB begrenzt, bei ext4 beträgt sie um ein Vielfaches mehr: 1 Exabyte (ca. 1 Million Terabyte).

btrfs
- Btrfs ist ein Dateisystem für Ausfallsicherheit. Die Abkürzung „BTRFS“ steht für „B-Tree FS“, auch bekannt als „Butter FS“ oder „Better FS“. Die Bezeichnung „Tree“ (also Baum) weist auf die besondere Funktionsweise von Btrfs hin. Denn anders als andere Dateisysteme erstellt das sogenannte Copy-on-Write-Dateisystem Btrfs bei jeder Schreiboperation eine neue Version der Datei, anstatt die ursprüngliche Datei zu überschreiben, um eine hohe Ausfallsicherheit zu gewährleisten.
Aufgrund seiner „Selbstheilungs“-Eigenschaften, wird es gern als Alternative zu den Dateisystemen ext4 oder ext3 genutzt, vor allem wenn es um große Datenmengen und hohe Zuverlässigkeit geht (Beispiel: NAS-Systeme im Heimnetzwerk/Kleinunternehmen). Es ist als Open-Source-Software für Linux und Windows verfügbar.

# Protokolle & Tools

Protokolle:

- NFS (Network File System)
→ Von Unix/Linux-Systemen entwickelt; erlaubt Zugriff auf Dateisysteme über das Netzwerk.
- SMB/CIFS (Server Message Block / Common Internet File System)
→ Microsoft-Standard, benutzt für Windows-Freigaben ("Netzlaufwerke").
- iSCSI (Internet Small Computer Systems Interface)
→ Überträgt blockbasierte Daten (ganze Festplatten) übers Netzwerk → das Dateisystem oben drauf kann dann alles mögliche sein (NTFS, ext4 usw.).
- FUSE (Filesystem in Userspace)
→ Kein Netzwerkprotokoll, aber spannend: erlaubt es, eigene Dateisysteme im User-Space zu erstellen und einzubinden.
- FTP/SFTP
→ Nicht direkt Dateisysteme, sondern Dateiübertragungen, aber oft genutzt, um Dateisysteme zu erreichen.

Tools (Commands):

FAT32 / exFAT
-	fatlabel (Label ändern)
-	fsck.vfat (Fehlerprüfung)
-	mkfs.vfat (neu formatieren)
  
NTFS
- ntfsfix (Fehler korrigieren unter Linux)
-	ntfs-3g (Linux-Treiber für Lesen und Schreiben)
-	chkdsk (Windows-Tool für Fehlerprüfung)
  
ext4
-	e2fsck (Dateisystemprüfung)
-	resize2fs (Größe ändern)
-	tune2fs (Optionen setzen, z.B. Journal-Verhalten)
  
btrfs
-	btrfs check (Fehlerprüfung)
-	btrfs scrub (Datenkonsistenz prüfen)
-	btrfs balance (Verteilung optimieren)
-	btrfs send/receive (Snapshots übertragen)

# Quellen:
https://www.ionos.at/digitalguide/server/knowhow/dateisysteme/
https://wr.informatik.uni-hamburg.de/_media/teaching/wintersemester_2010_2011/sds-1011-lieck-grundlagen_dateisysteme-ausarbeitung.pdf

