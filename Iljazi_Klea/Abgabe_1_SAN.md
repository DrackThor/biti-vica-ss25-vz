
# SAN (Storage Area Network)

## 1. Einführung: Was ist ein SAN?
Ein Storage Area Network (SAN) ist ein spezielles, hochperformantes Netzwerk, das Server mit gemeinsam nutzbaren Speicherressourcen verbindet. Anders als bei lokalem Speicher oder Network Attached Storage (NAS), bei dem Dateien über das Netzwerk bereitgestellt werden, stellt ein SAN Block-Level-Speicher bereit, also so, als ob die Festplatten physisch direkt an den Server angeschlossen wären.
Ziel eines SANs ist es, zentralisierten, skalierbaren und redundanten Speicher bereitzustellen, der hochverfügbar und besonders performant ist.



## 2. Verwendungszusammenhang: Wann wird SAN eingesetzt?
SANs finden Anwendung in mittelgroßen bis großen Unternehmen und Rechenzentren, in denen besonders hohe Anforderungen an Datenverfügbarkeit, Performance, Datensicherheit und Skalierbarkeit gestellt werden.
Typische Einsatzbereiche:
-Virtualisierte Infrastrukturen (z. B. VMware vSphere)
-Große Datenbanken (z. B. Oracle, SAP HANA)
-Backup- und Recovery-Systeme
-Hochverfügbare Cluster-Umgebungen
-Big Data und Analytics


## 3. Technische Funktionsweise (grobe Übersicht)
Ein SAN funktioniert auf Blockebene. Server greifen nicht über ein Dateisystem auf Daten zu, sondern direkt auf Speicherblöcke. Die wichtigsten Komponenten sind:
-Server (Hosts): Diese greifen über spezielle Netzwerkkarten (HBAs – Host Bus Adapters) auf das SAN zu.
-SAN-Switches: Hochleistungsfähige Switches, meist für Fibre Channel oder iSCSI optimiert.
-Storage-Systeme: Zentrale Speichergeräte wie RAID-Arrays, SSD-Farmen oder hybride Speichersysteme.

Kommunikation erfolgt über spezialisierte Protokolle:
-Fibre Channel (FC): Sehr hohe Geschwindigkeit, geringe Latenz, benötigt spezielle Hardware.
-iSCSI: Nutzt TCP/IP über normale Ethernet-Infrastruktur, günstiger, aber ggf. langsamer.
-NVMe over Fabrics (NVMe-oF): Modernes Protokoll mit besonders niedriger Latenz, oft in Hochleistungsumgebungen.
Der Speicher erscheint den Servern wie ein lokal angebundenes Laufwerk, obwohl er über das Netzwerk bereitgestellt wird.


## 4. Protokolle, Produkte & Tools
Protokolle
-Fibre Channel (FC): Traditionell und weit verbreitet im SAN-Bereich.
-iSCSI: Gut geeignet für Ethernet-basierte SANs.
-FCoE (Fibre Channel over Ethernet): Kombination aus FC und Ethernet.
-NVMe-oF: Neue Technologie mit extrem niedriger Latenz für SSD-Arrays.

Hersteller & Produkte
-Dell EMC: PowerMax, VMAX
-NetApp: AFF, FAS-Serie
-IBM: FlashSystem, Storwize
-Hewlett Packard Enterprise (HPE): 3PAR, Primera
-Hitachi Vantara: VSP-Serie

Tools
-Unisphere (Dell EMC)
-SANtricity (NetApp)
-HPE InfoSight
-Brocade SAN Health
-SolarWinds Storage Resource Monitor


## 5. Typische Architektur
Ein typisches SAN besteht aus:
-Mehreren Servern mit HBAs
-Einem oder mehreren SAN-Switches
-Gemeinsamen Storage-Systemen

Verbindungen:
-Server ↔ Switch (per Fibre Channel oder Ethernet)
-Switch ↔ Storage-Array


## 6. Vorteile eines SAN
-Hohe Performance durch spezialisierte Netzwerke
-Zentrale Verwaltung großer Datenmengen
-Redundanz und Hochverfügbarkeit
-Skalierbarkeit: Speicher kann einfach erweitert werden
-Effiziente Nutzung: Speicherpools können flexibel verteilt werden


## 7. Nachteile / Herausforderungen
-Kosten: Teure Hardware, Software und Management
-Komplexität: Einrichtung und Wartung erfordern Expertenwissen
-Fehlertoleranz: Bei Fehlkonfiguration kann ein ganzer Cluster betroffen sein


## 8. Fazit
Ein SAN ist eine essenzielle Technologie für moderne Rechenzentren. Es erlaubt die Trennung von Speicher und Recheneinheit und bietet zentrale, performante und hochverfügbare Speicherlösungen. Besonders in virtualisierten und datenintensiven Umgebungen ist der Einsatz von SANs kaum noch wegzudenken.
