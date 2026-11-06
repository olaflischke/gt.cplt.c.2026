---
name: code-review
description: Prüft einen markierten Codebereich auf Korrektheit, Sicherheit und Wartbarkeit.
---

# Code-Review

## Auftrag

Prüfe den markierten Codebereich und ändere zunächst keinen Code.

## Prüfschritte

1. Beschreibe kurz Zweck, Eingaben und Ausgaben.
2. Nenne fachliche Annahmen.
3. Prüfe Normalfälle, Grenzfälle und Fehlerfälle.
4. Prüfe sensible Daten, Berechtigungen und externe Zugriffe.
5. Nenne die drei wichtigsten Probleme, geordnet nach Risiko.
6. Schlage pro Problem eine kleine Gegenmaßnahme vor.

## Ergebnisformat

- Kurzbeschreibung
- Annahmen
- Befunde mit Priorität
- empfohlene nächste Schritte
- notwendige Tests oder Testfälle

## Sprachübergreifende Regeln

- Verwende die vorhandene Sprache.
- Berücksichtige die vorhandene Struktur und die vorhandenen Werkzeuge.
- Erfinde keine APIs, Bibliotheken oder fachlichen Regeln.
- Formuliere für COBOL Testfälle als Eingabe, erwartete Ausgabe und Fehlerpfad, wenn kein Testframework vorhanden ist.