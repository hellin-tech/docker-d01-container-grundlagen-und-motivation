# Container-Lifecycle – Musterlösung

## Schritt 1
`docker run -d` erstellt UND startet den Container im Hintergrund (-d = detached). Docker lädt das nginx-Image (falls nicht lokal vorhanden), erstellt einen Container daraus und startet den nginx-Prozess.

## Schritt 3
`docker ps` zeigt nur laufende Container. `docker ps -a` zeigt alle Container, auch gestoppte. Der gestoppte Container existiert noch (mit allen Daten), ist aber nicht aktiv.

## Schritt 5
`docker rm` auf einen laufenden Container schlägt fehl: "You cannot remove a running container." Man muss erst stoppen, dann löschen – oder `docker rm -f` (force) verwenden.

## Schritt 7
Alle Container auf einmal löschen: `docker rm -f $(docker ps -aq)` – das Subcommand `docker ps -aq` gibt alle Container-IDs zurück, `-f` erzwingt die Löschung auch laufender Container.
