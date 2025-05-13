## Role-Based Access Control (RBAC)

### Inhaltsverzeichnis
1. Definition
2. Aufbau & Funktionsweise
3. Schaubild
4. Vor- & Nachteile
5. Einsatzbereiche & Tools
6. Quellen

---

### 1. Definition

Role-Based Access Control (RBAC) ist ein Sicherheitsmodell zur Zugriffssteuerung in IT-Systemen. Die Zuweisung von Berechtigungen erfolgt nicht direkt an einzelne Benutzer, sondern über Rollen, denen Benutzer zugeordnet werden. Jede Rolle bündelt bestimmte Rechte und Aufgabenbereiche. Dadurch lässt sich der Zugriff auf Ressourcen sicher, transparent und effizient verwalten.

RBAC findet Anwendung in Bereichen mit klaren Zugriffshierarchien – etwa in Unternehmensnetzwerken, Cloud-Diensten, Containermanagement-Plattformen oder Datenbanksystemen.

---

### 2. Aufbau & Funktionsweise

RBAC besteht im Wesentlichen aus drei logischen Ebenen:

- **Benutzer (User):** Personen oder Dienste, die Zugriff benötigen.
- **Rollen (Roles):** Bündel von Berechtigungen, die bestimmte Aufgaben oder Verantwortungsbereiche abbilden.
- **Berechtigungen (Permissions):** Erlauben spezifische Aktionen auf Ressourcen (z. B. Lesen, Schreiben, Löschen).

Jede Rolle wird einmal definiert und kann mehreren Benutzern zugewiesen werden. Änderungen an der Rolle wirken sofort für alle zugewiesenen Benutzer. Dieses Prinzip reduziert Komplexität und Fehleranfälligkeit.

**Technische Umsetzung:**
RBAC wird häufig über Access Control Lists (ACLs), Richtlinien oder Rollenprofile in den jeweiligen Systemen implementiert. In Kubernetes beispielsweise über RoleBindings und ClusterRoles, bei AWS IAM über Policies.

**Gängige Protokolle/Tools/Produkte:**
- Kubernetes (RBAC mit YAML)
- AWS IAM (Identity and Access Management)
- Azure RBAC
- OpenLDAP, Keycloak (für rollenbasierte Authentifizierung)
- Unix/Linux mit `sudo`-Rollen

---

### 3. Schaubild

![RBAC Schema](assets/RBAC_Schaubild.png)

Das obige Schaubild veranschaulicht den typischen Ablauf einer rollenbasierten Zugriffskontrolle:
- Ein Administrator weist einzelnen Benutzer:innen passende Rollen zu.
- Diese Rollen definieren bestimmte Aufgaben oder Zuständigkeiten (z. B. Konfiguration, Verwaltung, Analyse).
- Die Rollen wiederum sind mit genau definierten Berechtigungen verknüpft – etwa zum Lesen, Bearbeiten oder Löschen von Daten.

So ist sichergestellt, dass Benutzer:innen nur auf genau jene Ressourcen zugreifen können, die sie für ihre Tätigkeit tatsächlich benötigen.

---

### 4. Vor- & Nachteile

**Vorteile:**
- Minimierung von Sicherheitsrisiken durch das Prinzip der minimalen Rechtevergabe
- Zentrale und einfache Verwaltung von Zugriffsrechten
- Gute Skalierbarkeit in großen IT-Umgebungen
- Transparente Zuweisung – hilfreich für Audits und Compliance

**Nachteile:**
- Hoher initialer Planungsaufwand (Rollenanalyse und -definition)
- Gefahr der Rollenexplosion bei zu detaillierten Berechtigungsmodellen
- Änderungen an Aufgabenverteilungen erfordern Rollenanpassungen

---

### 5. Einsatzbereiche & Tools

RBAC wird überall dort eingesetzt, wo Zugriffe kontrolliert und dokumentiert werden müssen. Typische Anwendungsfälle:
- Zugriff auf virtuelle Maschinen und Container
- Verwaltung von Cloud-Ressourcen
- IT-Support- und Helpdesk-Systeme
- Content Management Systeme (CMS)
- Unternehmensinterne Datenbankzugriffe

**Tools & Plattformen mit RBAC:**
- Kubernetes
- AWS IAM
- Microsoft Azure
- Keycloak
- OpenShift

---

### 6. Quellen

- [ComputerWeekly – Was ist RBAC?](https://www.computerweekly.com/de/definition/Role-Based-Access-Control-RBAC)
- [IONOS Digital Guide – Was ist Role-Based Access Control (RBAC)?](https://www.ionos.at/digitalguide/server/sicherheit/was-ist-role-based-access-control-rbac/)
- [Kubernetes Dokumentation – RBAC](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
- [Wallarm – What exactly is RBAC?](https://www.wallarm.com/what/what-exactly-is-role-based-access-control-rbac/)
