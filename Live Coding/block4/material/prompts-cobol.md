# Prompt-Vorlagen: Codequalitaet und Refactoring (COBOL)

## Verstehen

> Erklaere die markierte Funktion. Beschreibe Zweck, Eingaben, Ausgaben, Seiteneffekte
> und erkennbare Abhaengigkeiten. Aendere noch keinen Code.

## Smells benennen

> Liste konkrete Code-Smells in diesem Abschnitt auf. Nenne zu jedem Smell die
> betroffene Stelle, die Art des Problems (zum Beispiel lange Funktion, tiefe
> Verschachtelung, Magic Number, Duplikation, unklare Benennung, fehlende
> Fehlerbehandlung) und die moegliche Auswirkung. Schlage noch keine Aenderung vor.

## Testnetz pruefen

> Pruefe, ob die vorhandenen Tests das aktuelle Verhalten dieser Funktion ausreichend
> absichern. Schlage zusaetzliche Charakterisierungstests vor, die das bestehende
> Verhalten dokumentieren, auch wenn es fachlich diskutierbar ist. Aendere noch keinen
> Produktionscode.

## Refactoring-Plan

> Erstelle einen Refactoring-Plan in kleinen, einzeln testbaren Schritten. Jeder
> Schritt darf das aussen sichtbare Verhalten nicht veraendern. Nenne zu jedem Schritt
> das Ziel, die betroffenen Stellen und die Pruefung danach. Aendere noch keinen Code.

## Einen Schritt umsetzen

> Setze ausschliesslich Schritt 1 des Plans um. Zeige den Diff. Veraendere keine
> oeffentliche Schnittstelle, wenn dies nicht ausdruecklich Teil des Schritts ist.
> Halte dich an die vorhandenen COBOL-Projektkonventionen.

## Ergebnis pruefen lassen

> Vergleiche die Funktion vor und nach dem Refactoring. Nenne Unterschiede im
> Verhalten, nicht nur in der Formulierung. Weise ausdruecklich auf jede Stelle hin,
> an der sich das sichtbare Verhalten geaendert haben koennte.

## Ablehnen und zuruecksetzen

> Setze die letzte Aenderung zurueck. Erklaere kurz, warum der vorgeschlagene Schritt
> das Verhalten veraendert haette oder nicht auf den angeforderten Umfang begrenzt war.

## Sicherheitsergaenzung

> Pruefe den vorgeschlagenen refaktorierten Code zusaetzlich auf Eingabevalidierung,
> Fehlerbehandlung und unbeabsichtigte Offenlegung interner Details. Aendere nichts,
> nenne nur Risiken und Gegenmassnahmen.
