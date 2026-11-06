---
description: Zusätzliche Regeln für COBOL-Code im Projekt.
applyTo: '**/cobol/**'             # **/*.cbl, **/*.cob
---

# Zusätzliche Regeln für COBOL

- Beachte Compilerdialekt, Formatregeln und die vorhandene Laufzeitumgebung.
- Prüfe Copybooks, Datenbeschreibungen und Feldformate vor Änderungen.
- Bewahre bestehende Ein-/Ausgabeformate und Return-Codes, sofern nicht anders gefordert.
- Berücksichtige Batch-, Transaktions- und Wiederanlaufverhalten.
- Schlage Änderungen an Datenfeldern, PIC-Klauseln oder Schnittstellen nur mit ausdrücklicher Begründung vor.
- Beschreibe Testfälle als Eingaben, erwartete Ausgaben und Fehlerpfade, wenn kein automatisiertes Testframework vorhanden ist.