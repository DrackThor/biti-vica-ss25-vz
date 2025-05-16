# Cloud-Init

## Was ist Cloud-Init?

**Cloud-Init** ist ein Open-Source-Tool zur Initialisierung und Konfiguration von Cloud-Instanzen beim ersten Start (Bootstrapping). 
Es wird primär in Cloud-Umgebungen eingesetzt, um Instanzen automatisch mit Netzwerkeinstellungen, Benutzerdaten, Softwarepaketen und weiteren Konfigurationen auszustatten.

Cloud-Init wird meist von Images (z. B. Ubuntu, CentOS, Amazon Linux) unterstützt, die speziell für Cloud-Plattformen wie AWS, Azure oder OpenStack vorbereitet wurden.

---

## Kontext der Verwendung

Cloud-Init kommt in folgenden Szenarien zum Einsatz:

- **Automatisierte Bereitstellung (Provisionierung)** von virtuellen Maschinen (VMs) in der Cloud.
- **Skalierung** von Services, bei der neue Instanzen schnell einsatzbereit sein müssen.
- **Infrastructure as Code (IaC)**-Ansätze, bei denen Konfigurationen deklarativ beschrieben werden.
- **CI/CD-Pipelines**, in denen Testumgebungen automatisiert aufgesetzt werden.

Es ist ein zentraler Bestandteil moderner Cloud-Deployments und unterstützt DevOps-Praktiken wie Automatisierung, Wiederholbarkeit und Versionierung.

---

## Technische Funktionsweise (Überblick)

Cloud-Init läuft in mehreren Phasen beim ersten Start einer Instanz:

1. **Datenquelle (Data Source) erkennen**  
   Cloud-Init erkennt automatisch die verfügbare Datenquelle der Cloud-Plattform (z. B. AWS Metadata Service, OpenStack Config Drive).

2. **User-Data und Meta-Data verarbeiten**  
   - *User-Data:* Skripte oder YAML-Dateien, die Anweisungen zur Konfiguration enthalten.  
   - *Meta-Data:* Informationen über die Instanz selbst (z. B. Hostname, IP-Adresse).

3. **Module ausführen**  
   Cloud-Init verwendet Module zur Durchführung von Aktionen, z. B.:
   - Benutzer erstellen
   - Pakete installieren
   - SSH-Keys einrichten
   - Systemdienste aktivieren

4. **Konfigurationsdateien (cloud-config)**  
   Cloud-Init akzeptiert verschiedene Formate, am häufigsten `cloud-config` (YAML). Beispiel:

   ```yaml
   #cloud-config
   users:
     - name: demo
       groups: sudo
       shell: /bin/bash
       ssh-authorized-keys:
         - ssh-rsa AAAAB3...

   packages:
     - nginx
     - git

   runcmd:
     - systemctl enable nginx
     - systemctl start nginx

   final_message:
     - "Cloud-Init Konfiguration abgeschlossen."

   
5. **Persistenz und Wiederholbarkeit**  
   Cloud-Init speichert Logs und Status, um zu verhindern, dass bestimmte Konfigurationen mehrfach ausgeführt werden.


6. **Tools und Befehle**  
   Formate für User-Data:
   
   - Shell-Skripte
   - Cloud-Config (YAML)
   - MIME Multi-Part Archive (für kombinierte Inhalte)
     
   Wichtige Cloud-Init CLI-Befehle:

   - cloud-init status – Zeigt Status der Ausführung
   - cloud-init analyze – Analyse des Bootvorgangs
   - cloud-init single – Manuelle Ausführung einzelner Module


   
