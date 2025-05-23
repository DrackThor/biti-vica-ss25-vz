# Was ist Terraform?

Terraform ist ein IAC Open-Source-Tool (entwickelt von HashiCorp) mit dem Programmierer sicher und effizient Infrastrukturen erstellen, ändern und versionieren können. 

Mit diesem deklarativen Programmiertool wird eine übergeordnete Konfigurationssprache namens HCL (HashiCorp Configuration Language) verwendet, um einen gewünschten Endzustand einer cloudbasierten oder lokalen Infrastruktur zur Ausführung einer Anwendung beschrieben. Das Tool generiert einen Plan, um einen Endzustand zu erreichen. Der Plan wird dann ausgeführt, und die Infrastruktur wird bereitgestellt.

Terraform stellt Infrastruktur in verschiedenen Arten von Clouds oder Rechenzentren bereit und besitzt, je nach Ansicht, eine einfache Syntax. Terraform ist zurzeit eines der beliebtesten Tools, wenn es um Automatisierung von Infrastrukturen geht. 

Quelle: https://www.ibm.com/de-de/topics/terraform

# In welchem Kontext wird Terraform verwendet?

Terraform wird hauptsächlich dafür verwendet, Infrastruktur in der Public Cloud bereitzustellen – vor allem bei großen Anbietern wie AWS oder Azure. Diese Clouds können mithilfe sogenannter Provider in Terraform integrieren. Ein Provider ist ein Plug-in, welches vorhandene APIs und Sprachen wie Azure Bicep kapselt und Terraform-Syntax erstellt.

Die Unterstützung von Multi-Cloud-Strategien ein weiterer wichtiger Einsatzzweck von Terraform. Im Gegensatz zu anderen IAC-Lösungen ermöglicht Terraform die gleichzeitige Verwaltung von Ressourcen über verschiedene Cloud-Anbieter. Somit können Entwickler mit einer einheitlichen Sprache arbeiten, ohne sich auf verschiedene Tools und Konfigurationsformate einstellen zu müssen.

Weiters eignet sich Terraform auch für eigene oder interne Cloud-Umgebungen. Benutzerdefinierte Provider können entwickelt werden, um beliebige APIs in Terraform-Syntax zu überführen – auch außerhalb der klassischen Public Cloud. Das ermöglicht beispielsweise die Integration interner Systeme oder bestehender Tools in ein zentrales IAC-Modell.

Zusammengefasst kann man sagen, dass Terraform einem hilft, das gesamte IT-Ökosystem in einem Unternehmen oder privat über IAC zu verwalten – egal ob es sich um eine Single-Cloud, eine Multi-Cloud- oder eine benutzerdefinierte Bereitstellung handelt.

Quelle: https://www.varonis.com/de/blog/what-is-terraform#wie-funktioniert-terraform

# Wie funktioniert Terraform?

Mit Terraform kann die gesamte Infrastruktur über Konfigurationsdateien und Versionskontrolle definiert und verwaltet werden. Dies geschieht durch die Verwendung der Hauptkomponenten der Terraform-Architektur: Terraform Core und Terraform Provider.

## Funktionsweise von Terraform Core

Terraform Core verwendet zwei Eingabequellen, um seine Arbeit zu erledigen. Die erste Eingabequelle ist die Quell-Eingabe, die von einem Benutzer in Terraform konfiguriert wird. Hier wird definiert, welche Ressourcen erstellt, bzw. bereitgestellt werden müssen. Die zweite Eingabequelle besteht aus verschiedenen Daten-Feeds in Terraform über die aktuelle Infrastrukturkonfiguration.

Diese Eingaben werden dann von Terraform aufgenommen und es wird festgelegt, welche Maßnahmen vorzunehmen sind. Der vom Benutzer angegebene gewünschte Soll-Zustand wird genommen und mit dem Ist-Zustand verglichen. Die Architektur wird dann so konfiguriert, dass die Lücken verringert, bis hin zu geschlossen werden. Im Wesentlichen findet Terraform Core heraus, was erstellt, geändert oder gelöscht werden muss, um die Infrastruktur so bereitzustellen, wie man sie beschrieben hat.

## Funktionsweise von Terraform Providern

Die andere Schlüsselkomponente von Terraform sind Anbieter für bestimmte Technologien. Hier handelt es sich in der Regel um große Cloud-Provider wie AWS oder Azure. Allerdings kann es sich um beliebige andere IAC- oder PaaS-Tools handeln. Kubernetes ist beispielsweise auch ein Provider, den Terraform nutzt.

Über mehr als hundert Provider für verschiedene Technologien verfügt Terraform, mit denen Benutzer auf deren Ressourcen zugreifen können. Wenn beispielsweise AWS verwendet wird, hat Terraform auch Zugriff auf EC2-Instanzen und andere Ressourcen innerhalb des Tech-Stacks. Infrastrukturen können dann auf verschiedenen Ebenen erstellt werden, z. B. Kubernetes über Azure einsetzen.

Terraform nutzt Core- und Provider-Funktionen, um ihre Anwendungs- und Infrastruktureinrichtung schnell abzuschließen und nur Code zu verwenden.

Quelle: https://www.varonis.com/de/blog/what-is-terraform#wie-funktioniert-terraform

# Terraform Tools

## Terraform Console

Terraform Console ist ein Werkzeug, welches direkt in Terraform integriert ist. Mit dem Befehl „terraform console“ kann man eine interaktive Umgebung starten, in der man Terraform-Ausdrücke testen und auswerten kann. So kann man komplexe Logik oder Variablenberechnungen ausprobieren, ohne den gesamten Code ausführen zu müssen. Dies spart Zeit und hilft, Fehler früh zu erkennen. Hier ein Beispiel:

![Terraform Console Terminal](assets/1.png)

Quelle: https://spacelift.io/blog/terraform-tools

## VSCode Erweiterungen

Zwei der beliebtesten Tools für Terraform sind HashiCorp Terraform und Terraform Extension von Anton Kulikov.

Diese Tools machen Visual Studio Code zu einer der leistungsstarken Entwicklungsumgebungen für Terraform. Sie bieten Funktionen wie Syntaxhervorhebung, automatische Code-Vervollständigung und integriertes Debugging. Dadurch wird die Entwicklung deutlich effizienter und der Arbeitsablauf wird erleichtert.

![Terraform Tools](assets/2.png)

Quelle: https://www.env0.com/blog/top-terraform-tools-to-know-in-2024
 
## Atlantis

Atlantis ist ein Open-Source-Tool zur Automatisierung von Terraform Pull-Request-Prozessen. Es unterstützt GitOps-Workflows, indem es ermöglicht, Terraform-Code über Pull Requests auszuführen und zu validieren. Dies kann besonders in Teams mit mehreren Entwicklern hilfreich sein, um eine konsistente und nachvollziehbare Bereitstellung sicherzustellen.

Atlantis lässt sich mit weiteren Tools kombinieren, um zusätzliche Funktionen in die CI/CD-Pipeline zu integrieren, beispielsweise Validierungen oder Sicherheitsprüfungen. Das Tool folgt einem klar definierten Workflow für Pull Requests. Wenn dieser Ablauf mit der bestehenden GitOps-Strategie kompatibel ist, stellt Atlantis eine geeignete Open-Source-Lösung für die Arbeit mit Terraform im Rahmen von IAC dar.

Quelle: https://spacelift.io/blog/terraform-tools

## Terraform Cloud

Terraform Cloud ist Teil der HashiCorp Cloud Platform und ermöglicht – ähnlich wie Atlantis – die Ausführung von Terraform-Deployments basierend auf Commits im Versionskontrollsystem.

Es bietet zuverlässiges State Management, lässt sich mit vielen Tools integrieren und erlaubt die Verwaltung von Variablen, Secrets und Ressourcen. Die Plattform kann auch selbst über Terraform automatisiert werden. Funktionen wie die Integration externer Anwendungen oder Policy as Code sind nur in kostenpflichtigen Plänen enthalten. Die kostenlose Version eignet sich für kleine Teams, bei größerer Nutzung steigen die Kosten allerdings schnell an.

Quelle: https://spacelift.io/blog/terraform-tools
