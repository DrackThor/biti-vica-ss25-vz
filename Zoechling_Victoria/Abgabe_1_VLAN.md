# 1. VLAN – Begriff und Bedeutung
Ein VLAN (Virtual Local Area Network) ist ein virtuelles lokales Netzwerk, das innerhalb eines physischen Netzwerks erstellt wird. Es ermöglicht, Geräte logisch zu gruppieren, unabhängig davon, wo sie sich physisch im Netzwerk befinden. Somit können zwei Geräte, die an verschiedenen Orten angeschlossen sind, durch ein VLAN so behandelt werden, als wären sie im selben Netzwerksegment.

Moderne Netzwerke bestehen in der Regel aus einem oder mehreren Switches, über die Hunderte von Geräten miteinander verbunden werden können. VLANs ermöglichen es, solch große Netzwerke logisch in kleinere, übersichtliche Einheiten aufzuteilen, ohne die physische Verkabelung oder Geräteaufstellung ändern zu müssen. Solche VLANs können sich über mehrere Switche hinweg erstrecken. Voraussetzung dafür ist jedoch, dass VLAN-fähige (Managed) Switches verwendet werden.

Jedes VLAN bildet dabei eine eigene Broadcast-Domain. Sendet beispielsweise ein Teilnehmer einen Broadcast innerhalb des VLANs, erhalten nur die anderen Teilnehmer dieses VLANs die Nachricht. Der Broadcast wird nicht über die Grenzen des virtuellen Netzes hinaus weitergeleitet. Eine Kommunikation zwischen zwei verschiedenen VLANs ist nur möglich, wenn ein Router oder ein Layer-3-Switch vorhanden ist, der beide VLANs verbindet. VLANs verhalten sich dabei so, als wären sie vollständig getrennte Netzwerke mit eigenen, unabhängigen Switches.

Im Gegensatz zu einem klassischen LAN (Local Area Network), bei dem alle Teilnehmer im selben physischen Netzwerk verbunden sind, erlaubt ein VLAN die Trennung von Datenverkehr auf logischer Ebene. Es können so beispielsweise logische Gruppen, z. B. Abteilungen eines Unternehmens, gebildet werden – und das ohne zusätzliche physische Verbindungen wie Kabel oder Switches. Dies erhöht die Sicherheit, Netzwerkstruktur und Effizienz in Netzwerken erheblich. Außerdem bieten VLANs mehr Flexibilität, da Netzwerke schnell an neue Anforderungen angepasst werden können und reduzieren unnötigen Broadcast-Verkehr.

# 2. Anwendungsbereiche und Einsatzkontext

Wie bereits erwähnt, werden VLANs in größeren Netzwerken verwendet, um Netzwerksegmente logisch zu trennen. Typischerweise werden sie genutzt, um unterschiedliche Abteilungen eines Unternehmens, wie beispielsweise Verwaltung, IT oder Produktion, voneinander zu isolieren. Dadurch wird sowohl die Netzwerksicherheit verbessert (z. B. Schutz sensibler Daten) als auch der Netzwerkverkehr effizienter gestaltet (z. B. weniger unnötiger Broadcastverkehr).

## Im Kontext der Virtualisierung

In virtualisierten Umgebungen werden VLANs verwendet, um den Netzwerkverkehr von virtuellen Maschinen (VMs) zu strukturieren und voneinander zu trennen. Da viele VMs auf demselben physischen Host laufen, ist eine eindeutige Trennung des Datenverkehrs wichtig. Ein Hypervisor kann über virtuelle Switches den VMs bestimmte VLAN-IDs zuweisen. So können VMs, die zu unterschiedlichen logischen Netzwerken gehören, sicher und unabhängig kommunizieren, obwohl sie auf derselben Hardware laufen. Ohne VLANs wären solche Strukturen entweder unsicher oder nur mit deutlich höherem technischem Aufwand möglich.

## Einsatzgebiete

- Rechenzentren und Cloud-Plattformen  
- Virtualisierte Netzwerke  
- Unternehmensnetzwerke zur Trennung von Abteilungen  
- Gastnetzwerke im WLAN-Bereich  

**Praktische Beispiele:**

- **Hochschulen, Universitäten und Schulen:** Trennung von Netzwerken für Studierende und Schüler, Lehrer und Verwaltung, Forschung und BYOD-Geräte  
- **Krankenhäuser:** Trennung zwischen medizinischen Geräten, Verwaltungsnetz und Patienten-WLAN  
- **Hotels und öffentliche Einrichtungen:** Abgrenzung von interner Verwaltung und öffentlich zugänglichem WLAN für Gäste  

# 3. Technische Grundlagen und Funktionsweise

## 3.1 VLAN-Arten

### 3.1.1 Tagged VLANs

Technisch basiert VLAN auf dem Standard **IEEE 802.1Q**. Hierbei wird jedem Datenpaket/Ethernet-Frame ein sogenannter VLAN-Tag hinzugefügt. Dieser Tag enthält eine VLAN-ID, die angibt, zu welchem VLAN das Paket gehört, sowie Steuerdaten wie Priorität oder Kennzeichnung des Typs. Die VLAN-ID hat eine Größe von 12 Bit, was 2¹² = 4096 mögliche Kombinationen ergibt. Davon sind zwei reserviert für Management-/Systemzwecke (0 und 4095), sodass maximal 4094 VLANs genutzt werden können (IDs von 1–4094). Nur Geräte, die VLAN-fähig sind, können diesen Tag lesen und entsprechend weiterleiten.

Tagged VLANs werden hauptsächlich auf **Trunk Ports** verwendet, also dort, wo mehrere VLANs gleichzeitig über ein einziges Kabel übertragen werden.

### 3.1.2 Portbasierte VLANs

Bei **portbasierten VLANs** (auch: static VLANs) wird ein VLAN fest einem bestimmten Port auf einem Switch zugewiesen. Alle Geräte, die dann an diesem Port angeschlossen sind, gehören automatisch zu diesem VLAN. Dies ist die häufigste und einfachste Form der VLAN-Konfiguration und wird meist mit **Access Ports** verwendet.

## 3.2 Port-Konfiguration

VLANs werden direkt in Switches eingerichtet. Ein sogenannter **Managed Switch** steuert und erlaubt die Zuweisung von VLANs zu einzelnen Ports. Hier wird zwischen zwei Port-Typen unterschieden:

- **Access Ports:**  
  Der Port gehört genau zu einem einzigen VLAN und wird typischerweise für Endgeräte wie PCs oder Drucker verwendet. Der VLAN-Tag wird beim Eintritt in das VLAN-Netzwerk hinzugefügt und beim Austritt entfernt, sodass das Endgerät den Tag nicht verarbeiten muss.

- **Trunk Ports:**  
  Übertragen mehrere VLANs gleichzeitig, z. B. zur Verbindung zwischen Switches oder zwischen einem Switch und einem Hypervisor. Hier bleiben VLAN-Tags erhalten, damit das Zielgerät das VLAN erkennen kann.

## 3.3 Kommunikation innerhalb und zwischen VLANs

- Geräte im selben VLAN können direkt miteinander kommunizieren.  
- Geräte in unterschiedlichen VLANs benötigen einen Router oder Layer-3-Switch für die Kommunikation (Inter-VLAN-Routing).

# 4. Gängige Protokolle

- **IEEE 802.1Q** – Standard für VLAN-Tagging in Ethernet-Frames  
- **STP (Spanning Tree Protocol)** – Verhindert Schleifen in Switch-Topologien  
- **RSTP (Rapid Spanning Tree Protocol)** – Schnellere Version von STP  
- **LLDP (Link Layer Discovery Protocol)** – Erkennt benachbarte Geräte und VLAN-Zugehörigkeit

# 5. Produkte

## Fortinet

- **FortiGate-Firewalls:** VLAN-Unterstützung auf physischen und virtuellen Interfaces  
- **FortiSwitches:** VLAN-fähig, zentral über FortiGate verwaltet  
- **FortiOS:** VLAN-Konfiguration per GUI oder CLI  
**Beispiele:** FortiGate 60F / 100F / 200F, FortiSwitch 108E / 124F / 248E

## Cisco

- **Catalyst- und Nexus-Switches:** Weit verbreitet in Enterprise-Netzen  
**Beispiele:** Catalyst 2960X / 9200 / 9300, Nexus 5000 / 7000

# 6. Tools

- **Wireshark:** Analyse von VLAN-Tags in Netzwerkpaketen  
- **Cisco Packet Tracer:** Simulation von VLAN-Konfigurationen  
- **PuTTY:** Terminal-Zugriff zur CLI-Konfiguration von VLANs (z. B. via SSH/Telnet)

# 7. Beispielhafte VLAN-Architektur

Das Bild zeigt ein Netzwerk, in dem VLANs eingesetzt werden, um zwei Gerätegruppen logisch voneinander zu trennen. Obwohl alle Geräte über denselben Switch verbunden sind, sorgt die VLAN-Konfiguration dafür, dass sie getrennt kommunizieren.

# 8. Fazit

VLANs sind ein zentrales Werkzeug für moderne Netzwerke – besonders im Bereich der Virtualisierung. Sie ermöglichen eine sichere, flexible und übersichtliche Trennung von Netzwerken ohne physische Veränderungen und vereinfachen Verwaltung sowie Skalierung.

# 9. Quellen

- https://www.thomas-krenn.com/de/wiki/VLAN_Grundlagen  
- https://www.ionos.at/digitalguide/server/knowhow/vlan-grundlagen/  
- https://www.wirecloud.de/blog/vlan-virtual-local-area-network/  
- https://docs.fortinet.com/document/fortigate/6.2.16/cookbook/402940/vlans  
