# 1. Was ist eine Virtuelle Maschine?

Eine Virtuelle Maschine (VM) beschreibt eine virtuelle Repräsentation oder Emulation eines physischen Computers, welche anstelle von Hardware, Software verwendet, um Programme und Anwendungen auszuführen und bereitzustellen.  
(https://www.ibm.com/de-de/think/topics/virtual-machines)

Dabei werden die physischen Maschinen, auf denen die virtuellen Maschinen laufen Host genannt und die VMs als Guest bezeichnet. Der Hypervisor stellt die Hardware-Ressourcen (CPU, RAM, Storage) als einen Pool zur Verfügung, aus welchem den jeweiligen VMs Ressourcen zugewiesen werden können.  
(https://www.redhat.com/de/topics/virtualization/what-is-a-virtual-machine#was-ist-virtualisierung)


# 2. In welchem Kontext werden VMs verwendet?

Virtuelle Computer werden für verschiedene Zwecke verwendet, unter anderem:
- Entwicklung und Bereitstellung von Anwendungen in der Cloud
- Testen neuer Betriebssysteme, einschließlich Beta-Versionen
- Schnelles und unkompliziertes Einrichten von Entwicklungs- und Testumgebungen für Entwickler
- Sicherung des aktuellen Betriebssystems
- Zugriff auf virenbefallene Daten oder Nutzung älterer Anwendungen durch Installation eines früheren Betriebssystems
- Ausführung von Software oder Apps auf Betriebssystemen, für die sie ursprünglich nicht konzipiert wurden

(https://azure.microsoft.com/de-de/resources/cloud-computing-dictionary/what-is-a-virtual-machine)


# 3. Technische Funktionsweise

Virtualisierung bezeichnet das Verfahren, bei dem eine softwarebasierte, also virtuelle Version eines Computers erstellt wird. Dabei werden Ressourcen wie Prozessorleistung, Arbeitsspeicher und Speicherplatz von einem physischen Rechner, etwa einem lokalen PC oder einem entfernten Server in einem Rechenzentrum, zur Verfügung gestellt. Ein virtueller Computer ist in der Regel eine Datei, häufig als Image bezeichnet, die sich wie ein echter Computer verhält. Er läuft in einem eigenen Fenster und stellt eine unabhängige Arbeitsumgebung dar, oft sogar mit einem anderen Betriebssystem. In vielen Fällen bildet er die komplette Arbeitsumgebung eines Nutzers nach, wie man es beispielsweise auf Firmenrechnern kennt. Da virtuelle Maschinen klar vom restlichen System getrennt sind, beeinträchtigen Anwendungen innerhalb der VM das Hauptbetriebssystem nicht, womit mögliche Konflikte vermieden werden.

(https://azure.microsoft.com/de-de/resources/cloud-computing-dictionary/what-is-a-virtual-machine)


# 4. Gängige Protokolle, Produkte, Tools

## Gängige Protokolle

- **RDP:** Fernzugriff auf Windows-Desktops (Microsoft)
- **VNC:** Plattformunabhängiger Fernzugriff auf GUIs
- **SPICE:** Optimiert für virtuelle Desktops (z. B. QEMU, Red Hat)
- **SSH:** Sicherer Terminal-Zugriff auf Linux/Unix-Systeme

## Beliebte Tools & Produkte

- **VMware Workstation / ESXi:** Professionelle Virtualisierung (kommerziell)
- **VirtualBox:** Kostenlos, plattformübergreifend (Oracle)
- **Hyper-V:** In Windows integrierter Hypervisor
- **QEMU + KVM:** Open Source, leistungsstark unter Linux
- **Proxmox VE:** Verwaltung von VMs und Containern, webbasiert

## Management & Backup

- **Vagrant:** Automatisierte VM-Erstellung für Entwickler
- **Libvirt:** Schnittstelle zur Verwaltung mehrerer Hypervisoren
- **Veeam:** Backup und Recovery für virtuelle Maschinen
- **Nagios / Zabbix:** Monitoring von VM-Infrastruktur


(https://www.pcwelt.de/article/1149663/beste-virtualisierungs-tools-windows.html)  
(https://learn.microsoft.com/en-us/troubleshoot/windows-server/remote/understanding-remote-desktop-protocol)


# 5. Virtuelle Maschinen - Grafische Veranschaulichung

![VM-Architektur](assets/VM.png)

Diese Grafik zeigt, wie virtuelle Maschinen (VMs) auf physischen Servern über eine Virtualisierungsschicht (Hypervisor) betrieben werden. Jede VM besitzt ein eigenes Betriebssystem sowie die nötigen Bibliotheken und Anwendungen und ist vom Host-System isoliert. Zusätzlich können mehrere Virtualisierungsserver gemeinsam auf einen zentralen Speicher zugreifen, wodurch eine flexible und skalierbare Infrastruktur entsteht.

(https://azure.microsoft.com/de-de/resources/cloud-computing-dictionary/what-is-a-virtual-machine)

# 6. Vorteile virtueller Maschinen:
- **Kosteneffizienz:** Mehrere VMs auf einem Server reduzieren den Bedarf an Hardware.
- **Flexibilität:** Schnelles Einrichten und Zurücksetzen von Entwicklungs- und Testumgebungen.
- **Skalierbarkeit:** Ressourcen können dynamisch zugewiesen und angepasst werden.
- **Ausfallsicherheit:** VMs sind leicht zu sichern, zu klonen und wiederherzustellen.
- **Sicherheit:** Klare Trennung zwischen VMs schützt das Hostsystem vor Schadsoftware.

(https://azure.microsoft.com/de-de/resources/cloud-computing-dictionary/what-is-a-virtual-machine)
