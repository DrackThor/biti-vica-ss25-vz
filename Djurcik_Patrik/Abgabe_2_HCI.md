# Thema: Hyperconverged Infrastructure  

## Inhaltsverzeichnis  

1. [Was ist Hyperconverged Infrastructure?](#was-ist-hyperconverged-infrastructure)
2. [Wie funktioniert Hyperconverged Infrastructure?](#wie-funktioniert-hyperconverged-infrastructure)
3. [Vor- und Nachteile von Hyperconverged Infrastructure](#vor--und-nachteile-von-hyperconverged-infrastructure)
4. [Fazit](#fazit)
5. [Welche HCI-Lösungen gibt es?](#welche-hci-lösungen-gibt-es)
6. [Quellen](#quellen)

## Was ist Hyperconverged Infrastructure?

Als Hyperconverged Infrastructure (zu Deutsch: hyperkonvergente Infrastruktur) wird IT-Infrastruktur bezeichnet, in der **alle Komponenten** eines klassischen Rechenzentrums (Rechenleistung, Speicher und Netzwerk) **zusammengefasst** und **zentral verwaltet** werden.

Hyperconverged Infrastructure ist eine Weiterentwicklung der Converged Infrastructure, welche wiederum eine Weiterentwicklung der traditionellen IT-Infrastruktur ist.

![Convergence_Explanation](assets/Convergence_Explanation.jpg)  
*Unterschied zwischen den verschiedenen Konvergenz-Stufen*  

### Traditionelle Infrastruktur

Im traditionellen Infrastrukturaufbau, welcher seit Jahrzehnten in Rechenzentren genutzt wird, ist jede Komponente des Gesamtsystems voneinander getrennt und läuft auf eigener Hardware. Dadurch werden **separate Server** für die Bereitstellung der Rechenleistung benötigt, ein **dediziertes Speichersystem** in Form von SAN oder NAS für die Speicherkapazität, sowie **Switches und weitere Netzwerkkomponenten** für den Netzwerkaufbau.  
Dies führt zu beträchtlichen Kosten bei der Anschaffung der Hardware, welche im laufenden Betrieb durch Kosten für Strom und Stellplatz weiter steigen. Außerdem ist die Verwaltung traditioneller Infrastruktur aufwändiger, da die einzelnen Komponenten alle individuell angesteuert und konfiguriert werden müssen.

### Converged Infrastructure

Um dem Kostenpunkt und der Inflexibilität der traditionellen Infrastruktur entgegenzuwirken wurde die Architektur der Converged Infrastructure (zu Deutsch: konvergente Infrastruktur) entwickelt.  
Einzelne Komponenten und Anwendungen der IT-Infrastruktur **teilen** sich nun **Ressourcen**. Converged Infrastructure besteht zwar weiterhin aus separaten, physischen Bausteinen - diese werden jedoch als **Gesamtsystem** konzipiert, als Paket von einem einzelnen Hersteller gekauft und über eine **Management Software** verwaltet.  
Als Weiterentwicklung der traditionellen Infrastruktur bietet Converged Infrastructure neben dem Kostenpunkt noch den Vorteil, dass die Verwaltung der ganzen Infrastruktur bedeutend erleichtert wird. Es muss nicht jede Komponente einzeln angesteuert werden, wodurch der administrative Aufwand verringert wird.  
Der Erwerb der gesamten Infrastruktur von einem einzelnen Hersteller kann jedoch sowohl ein Vorteil, als auch ein Nachteil sein - einerseits ist das System intern bestens aufeinander abgestimmt, andererseits ist die Flexibilität eingeschränkt, da die Infrastruktur im Betrieb abhängig vom selben Lieferanten ist.

### Hyperconverged Infrastructure

In der Hyperconverged Infrastructure werden die einzelnen Komponenten noch weiter zusammengefasst, um die Kosten weiter zu senken und die Flexibilität zu erhöhen.  
Einzelne Komponenten des Gesamtsystems sind nun nicht mehr physisch getrennt, sondern verschwimmen über Hardwaregrenzen hinweg durch **Virtualisierung** ineinander. Die Kapazitäten der verbauten Server - meist handelsüblicher commercial off-the-shelf (COTS) Server - werden gepoolt und über einen Hypervisor je nach Bedarf dynamisch zugewiesen.  

Der Begriff "Hyperconverged" setzt sich aus zwei Wörtern zusammen: *hyper*, aus dem Griechischen, was "über" bedeutet, und *converged*, beziehungsweise im Deutschen *konvergent*, was so viel wie "in einem Punkt zusammenkommend" bedeutet. Da die Converged Infrastructure bereits teilweise in einem Punkt zusammenkommt und Hyperconverged Infrastructure die Integration noch weiter treibt, kann sie als "über konvergent" bezeichnet werden.

## Wie funktioniert Hyperconverged Infrastructure?

Durch die Virtualisierung und Abstraktion typischerweise Hardware-basierter Systeme müssen diese anders dargestellt werden, um die Verteilung und gemeinsame Verwaltung zu ermöglichen. Deshalb werden diese Bausteine in **Software** abgebildet:

- **Rechenleistung (Computing)**
    
    Die Rechenleistung in HCI wird durch **Virtualisierung** bereitgestellt. Der Hypervisor ist im Fall der Rechenleistung die Software, welche die Leistung der einzelnen Server bündelt und auf der Virtualisierungsebene an verschiedene VMs aufteilen kann.

- **Speicher (Storage)**

    Die Speicherkapazität der einzelnen Server wird, ähnlich wie bei der Rechenleistung, über die verschiedenen Server verteilt, wodurch dedizierte Hardware für die Bereitstellung entfällt. Dies wird großteils in Form von **software-defined storage (SDS)** abgebildet, wobei es dabei diverse Möglichkeiten gibt, diese aufzubauen. Alle Möglichkeiten teilen sich jedoch die Eigenschaft, dass darunter eine Software liegt, welche gespeicherte Daten je nach Bedarf und Kapazitäten aufteilt.  
    Diese Softwareebene ermöglicht eine bessere und kontrolliertere Abfrage sowohl der Datenspeicherung, als auch der Datenabfrage.

- **Netzwerk (Networking)**

    Auch die Netzwerkinfrastruktur kann über Software abstrahiert werden, um die Notwendigkeit dedizierter Hardware zu umgehen. Mittels **software-defined networking (SDN)** wird die Netzwerkverwaltung über Software virtualisiert dargestellt. Die Virtualisierungsebene ermöglicht, wie beim Storage, genauere Konfigurationsmöglichkeiten und eine Trennung der Data und Control Plane, wodurch das Management des Netzwerkes agiler wird.

Diese separaten Softwarebausteine, welche in sich Hardwarebausteine verwalten, werden wiederum an einer einzelnen Stelle durch eine Management Software gesteuert, wodurch auch in dieser Ebene die Verwaltung und Konfiguration vereinfacht wird.

## Vor- und Nachteile von Hyperconverged Infrastructure

### Vorteile

- **Zentralisierung**  

    Einer der größten Vorteile und auch Gründe, HCI als Aufbauweise zu wählen, liegt in der Zentralisierung. Durch die Verwaltung über eine einzelne Management Software wird die Konfiguration und Überwachung des ganzen Systems bedeutend erleichtert. Des Weiteren werden, durch die Verwaltung über einen einzelnen Punkt, die nötige Arbeitszeit und der nötige Aufwand für gleiche Tätigkeiten im Vergleich zu traditioneller Infrastruktur verringert.

- **Skalierbarkeit**

    Durch die Aufteilung der Hardware im System ist es leichter, zusätzliche Ressourcen zur Verfügung zu stellen. Einerseits können verfügbare Rechenleistung und Speicherkapazitäten durch die Softwareebene je nach Bedarf verteilt werden, andererseits kann bei mangelnden Ressourcen neue Hardware hinzugefügt werden, welche softwaretechnisch leicht implementiert werden kann.

- **Redundanz**

    Aufgrund der Verteilung hat HCI gute Möglichkeiten, Redundanz sicherzustellen. Daten können über mehrere Hardwarebausteine (Knoten/Nodes) repliziert oder aufgeteilt werden, wodurch bei Ausfall einzelner Nodes weniger bis keine Probleme entstehen.

- **Verfügbarkeit**

    Auch bei Wartungsbedarf oder Ausfall steht die Verteilung der Daten und Rechenleistung über mehrere Nodes als Vorteil da. Da die Leistung des Systems von mehreren Hardwarekomponenten kommt, können einzelne Nodes leichter abgeschalten, entfernt oder gewartet werden, ohne dabei für Downtime zu sorgen.

### Nachteile

- **Vendor Lock-in**

    Da die meisten HCI-Lösungen untereinander nicht oder nur über Umwege kompatibel sind, ist ein HCI System meistens auf einen einzelnen Hersteller angewiesen. Dies führt vor allem bei Problemen oder Unzufriedenheit zu Schwierigkeiten, da in den meisten Fällen ein Wechsel des Herstellers nur in Form des ganzen Systems möglich ist.

- **Unflexible Skalierung**

    Die Skalierung von HCI ist zwar einfach, kann sich jedoch, aufgrund der Form der Hardwarekomponenten, unflexibel gestalten. Da die Erweiterung über das Hinzufügen kompletter Server läuft, werden, wenn beispielsweise nur Speicherkapazität benötigt wird, alle anderen Komponenten ebenfalls erhöht. Somit ist nur das ganze System skalierbar, was einzelne Komponenten (Speicher, Rechenleistung und Netzwerkkomponenten) schwierig auszubauen macht.  
    Dieser Nachteil trifft jedoch nicht auf jede Hyperconverged Infrastructure zu, da es Systeme gibt, die eine separate Skalierung der einzelnen Komponenten ermöglichen.

- **Kosten**

    Die Rentabilität von HCI ist stark von der Auslastung der einzelnen Komponenten und der Größe des Unternehmens abhängig. Wird verhältnismäßig viel Rechenleistung im Vergleich zu den anderen Komponenten gebraucht, so sind diese automatisch in der Erweiterung integriert und müssen somit gezahlt werden.  
    Des Weiteren sind die Lizenzkosten, welche für die Management Software anfallen, vergleichsweise hoch, was sich in kleinen Unternehmen mehr auswirkt.

## Fazit

Trotz einiger Nachteile überwiegen, ab einer gewissen Unternehmensgröße oder Komplexität, die Vorteile von HCI. Die Verteilung der einzelnen Komponenten und die generelle Flexibilität ermöglichen moderneres und effizienteres Arbeiten auf weniger Hardware, weniger Platz und somit auch **weniger Gesamtbetriebskosten**.  
Des Weiteren gibt es in vielen HCI-Lösungen Hybrid-Cloud Lösungen und Wege, die vorhandene Infrastruktur in die **Cloud** zu **migrieren**, um noch zukunftssicherer zu sein.

## Welche HCI-Lösungen gibt es?

| Hersteller | Lösung | Vorteile | Nachteile |
|:-|:-:|:-:|:-:|
|**VMware**|VMware vSAN|Starke Integration in vSphere<br>Gute Hardware Partnerschaften|Hohe Kosten<br>Integration ohne VMware schwierig|
|**Nutanix**|Nutanix AOS|Kosteneffizient im Betrieb<br>Vorreiter in HCI<br>Intuitives Managementsystem|Geringere Hardware Integration<br>Höhere Vorlaufkosten|
|**Microsoft**|Azure Local|Gute Synergie mit Windows<br>Integration mit Azure<br>Leichtere Cloud Migration|Eingeschränkter Linux-Support<br>Eingeschränkte Hardware Integration|
|**Hewlett Packard Enterprise**|HPE SimpliVity|Einfaches Setup<br>Schnelle Wiederherstellung<br>Einfache Deduplikation|Schwierige Skalierung<br>Support reagiert langsam|


## Quellen

- [BDRSuite - Hyperconverged Infrastructure Pros, Cons, Benefits, and Drawbacks](https://www.bdrsuite.com/blog/hyperconverged-infrastructure-pros-and-cons/#Drawbacks)
- [Nutanix - What is hyperconverged infrastructure?](https://www.nutanix.com/hyperconverged-infrastructure)
- [Peerspot - HPE SimpliVity pros and cons](https://www.peerspot.com/products/hpe-simplivity-pros-and-cons)
- [Redhat - Understanding Hyperconverged infrastructure](https://www.redhat.com/en/topics/hyperconverged-infrastructure)
- [Redhat - Was ist IT-Infrastruktur?](https://www.redhat.com/de/topics/cloud-computing/what-is-it-infrastructure)
- [VMware - What is hyperconverged infrastructure?](https://www.vmware.com/topics/hyperconverged-infrastructure)
- [Wikipedia - Converged infrastructure](https://en.wikipedia.org/wiki/Converged_infrastructure)
- [Wikipedia - Hyper-converged infrastructure](https://en.wikipedia.org/wiki/Hyper-converged_infrastructure)
- [Wikipedia - Hyperkonvergente Infrastruktur](https://de.wikipedia.org/wiki/Hyperkonvergente_Infrastruktur)
- [Wikipedia - Software-defined networking](https://en.wikipedia.org/wiki/Software-defined_networking#New_network_architecture)
- [Wikipedia - Software-defined storage](https://en.wikipedia.org/wiki/Software-defined_storage)