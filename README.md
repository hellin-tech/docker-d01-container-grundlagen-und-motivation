# D-01: Container-Grundlagen

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new?quickstart=1)

## NovaTech-Szenario
NovaTechs IoT-Plattform läuft auf einem einzigen Server – manuell installiert, schwer wartbar. CTO Lisa Bergmann möchte die Plattform modernisieren. Tom Richter (DevOps) soll Container-Technologie evaluieren.

## Lernziele
- Container vs. virtuelle Maschinen unterscheiden
- Das Konzept von Images und Containern verstehen
- Docker-Architektur (Client, Daemon, Registry) kennenlernen
- Erste Docker-Befehle ausführen (`docker run`, `docker ps`, `docker images`)

## 🚀 Schnellstart mit GitHub Codespaces

> **Keine lokale Installation nötig!** Dieses Repo ist für GitHub Codespaces vorkonfiguriert.

1. Klicke oben auf **"Open in GitHub Codespaces"** oder gehe auf **Code → Codespaces → Create codespace on main**
2. Warte, bis die Umgebung geladen ist (ca. 1–2 Minuten)
3. Docker ist automatisch verfügbar — teste mit `docker --version`
4. Starte direkt mit den Aufgaben unten!

### Was ist vorinstalliert?
- Docker Engine (Docker-in-Docker)
- Docker Compose v2
- VS Code Docker Extension
- Port-Forwarding für Ports 8080 und 3000

### Hinweise zur Codespaces-Nutzung
- **Port-Forwarding**: Wenn ein Container einen Port exponiert, zeigt VS Code automatisch eine Benachrichtigung. Klicke auf "Open in Browser".
- **Ressourcen**: Der kostenlose Codespaces-Tarif bietet 60h/Monat. Stoppe den Codespace nach der Übung (`Codespaces → Stop Codespace`).
- **Persistenz**: Deine Änderungen bleiben erhalten, solange der Codespace existiert. Committe wichtige Änderungen!

## Aufgaben

### Aufgabe 1: Ersten Container starten
```bash
# Starte einen nginx-Container und greife auf Port 8080 zu
docker run -d --name mein-erster-container -p 8080:80 nginx:1.25
```
Sobald der Container läuft, klicke auf die Port-Benachrichtigung in VS Code oder öffne den Tab "Ports" und klicke auf das Globe-Icon bei Port 8080.

### Aufgabe 2: Container erkunden
Verwende die folgenden Befehle, um den laufenden Container zu untersuchen:
```bash
docker ps
docker inspect mein-erster-container
docker logs mein-erster-container
docker exec -it mein-erster-container /bin/bash
```
Beantworte: Welche IP hat der Container? Welches Betriebssystem läuft darin?

### Aufgabe 3: NovaTech-Vergleich (Container vs. VM)
Lies die Datei `aufgaben/vergleich_vorlage.md` und fülle die Tabelle aus. Nutze deine Recherche-Ergebnisse.

### Aufgabe 4: Container-Lifecycle
Führe die Befehle in `aufgaben/lifecycle.sh` der Reihe nach aus und dokumentiere, was bei jedem Schritt passiert.

## Lösung
Die Musterlösungen findest du im Ordner `loesung/`.
