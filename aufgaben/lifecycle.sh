#!/bin/bash
# Container-Lifecycle: Führe die Befehle der Reihe nach aus
# und dokumentiere, was bei jedem Schritt passiert.

echo "=== Schritt 1: Container erstellen und starten ==="
docker run -d --name lifecycle-test nginx:1.25
# Was passiert? → 

echo ""
echo "=== Schritt 2: Laufende Container anzeigen ==="
docker ps
# Was siehst du? → 

echo ""
echo "=== Schritt 3: Container stoppen ==="
docker stop lifecycle-test
docker ps
docker ps -a
# Unterschied zwischen 'docker ps' und 'docker ps -a'? → 

echo ""
echo "=== Schritt 4: Container neu starten ==="
docker start lifecycle-test
docker ps
# Was passiert? → 

echo ""
echo "=== Schritt 5: Container löschen (im laufenden Zustand) ==="
docker rm lifecycle-test
# Funktioniert das? Warum (nicht)? → 

echo ""
echo "=== Schritt 6: Container stoppen und löschen ==="
docker stop lifecycle-test
docker rm lifecycle-test
docker ps -a
# Was ist jetzt anders? → 

echo ""
echo "=== Schritt 7: Aufräumen ==="
docker run -d --name test1 nginx:1.25
docker run -d --name test2 nginx:1.25
docker run -d --name test3 nginx:1.25
docker ps
echo "Wie löschst du alle drei auf einmal?"
# Tipp: docker rm -f $(docker ps -aq)
