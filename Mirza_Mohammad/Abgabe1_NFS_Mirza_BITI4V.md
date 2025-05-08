# Network File System (NFS)

# Worum handelt es sich bei einem Network File System (NFS)?

Das Network File System (NFS) ist eine Client/Server-Anwendung, die es einem Benutzer ermöglicht, eine Datei auf einem Remote-Computer so anzuzeigen, zu speichern und zu aktualisieren, als ob sie sich auf seinem eigenen Rechner befinden würde. Auf dem System des Anwenders muss ein NFS-Client installiert sein, auf dem anderen Rechner der NFS-Server. Beide Komponenten setzen voraus, dass TCP/IP installiert ist, da der NFS-Server und der NFS-Client TCP/IP einsetzen, um die Dateien und Aktualisierungen zu übertragen.

In welchem Kontext wird ein Network File System (NFS) eingesetzt?

NFS wird bei der Dateifreigabe über Netzwerke verwendet. Es erlaubt einem Computer auf Dateien zuzugreifen, die auf einem anderen Rechner gespeichert sind, und lassen es so wirken, als wären sie lokal gespeichert.

Einsatzgebiete:

-	Unternehmen
Ein File Server stellt Dateien vielen Clients zur Verfügung (z.B. Home-Verzeichnisse, Gruppenlaufwerke oder gemeinsame Projektdaten.

-	Linux
NFS ist in Linux sehr verbreitet, da NFS stark in diese Systeme integriert ist. Es wird z.B. für das Einbinden von /home-Verzeichnissen verwendet.

-	Virtualisierung
In VMware-Umgebungen wird NFS verwendet, um Speicher bereitzustellen, auf dem VMs gespeichert werden.

-	Container
NFS wird als Persistent Volume (PV) verwendet, damit Container persistenten Speicher erhalten.

# Vorteile von einem Network File System (NFS)

Abgesehen davon, dass es den lokalen Zugriff auf entfernte Dateien ermöglicht, ist NFS vor allem für seine Host-Authentifizierung bekannt. Sie ist einfach zu bewerkstelligen und macht es möglich, eine Verbindung zu einem anderen Dienst nur über eine IP-Adresse herzustellen.

Weitere Vorteile der NFS-Dateifreigabe sind:

-	NFS bietet eine zentrale Verwaltung

-	NFS ermöglicht es einem Benutzer, sich bei einem beliebigen Server anzumelden und transparent auf seine Dateien zuzugreifen.

-	Es gibt sie schon seit langem, so dass sie mit den Anwendungen vertraut ist.

-	Keine manuelle Aktualisierung für neue Dateien erforderlich

# Die verschiedenen Versionen von einem Network File System (NFS)

Bei NFS gibt es derzeit drei verschiedene Versionen von NFS, welche unterschiedliche Standards erfüllen.

NFS Version 2 (NFSv2)

NFSv2 ist die älteste Version und nutzt das verbindungslose UDP-Protokoll zur Datenübertragung über IP-Netzwerke. Dadurch sind schnelle Verbindungen möglich, jedoch ohne zuverlässige Zustellung, da der Client Anfragen auch dann sendet, wenn der Server nicht erreichbar ist.

NFS Version 3 (NFSv3)

NFSv3 brachte wesentliche Verbesserungen, darunter asynchrones Schreiben und bessere Fehlerbehandlung. Es unterstützt zudem 64-Bit-Dateien und kann somit auch größere Datenmengen effizient verarbeiten.

NFS Version 4 (NFSv4)

NFSv4 ist die modernste Version und verwendet TCP für eine zuverlässige Datenübertragung. Sie funktioniert ohne zusätzliche Dienste wie rpcbind und kann problemlos durch Firewalls betrieben werden. Der Standardport 2049 wird direkt genutzt, was die Konfiguration vereinfacht.

# Ein Network File System (NFS) im Betrieb (Beispiel: Ubuntu)

Um einen NFS-Server unter Linux zu betreiben sind tatsächlich nur wenige Schritte erforderlich. Zuerst wird das entsprechende Serverpaket installiert. Dies geschieht in der Kommandozeile mit folgendem Befehl:

“sudo apt install nfs-kernel-server”

Nach der Installation erfolgt die Konfiguration des NFS-Servers. Dazu wird die Datei /etc/exports bearbeitet, in der festgelegt wird, welche Verzeichnisse für welche Clients freigegeben werden sollen. Alternativ können Freigaben auch mit dem Befehl „exportfs“ dynamisch verwaltet werden.

Der Dienst wird anschließend mit folgendem Befehl gestartet:

“sudo systemctl start nfs-kernel-server.service”

Auf Client-Seite kann ein freigegebenes Verzeichnis in das lokale Dateisystem eingebunden (gemountet) werden. Dazu dient folgender Befehl, wobei „example.hostname.com:/ubuntu“ der Pfad zur Freigabe und „/local/ubuntu“ das lokale Einhängeziel ist:

sudo mount example.hostname.com:/ubuntu/local/ubuntu

Dies ermöglicht es, Dateien über das Netzwerk so zu nutzen, als würden sie lokal vorliegen. 

 
# Quellen:

https://www.computerweekly.com/de/definition/Network-File-System-NFS

https://www.datto.com/de/blog/what-is-nfs-file-share/

https://www.atera.com/de/blog/what-is-nfs-understanding-the-network-file-system/

https://chatgpt.com/
