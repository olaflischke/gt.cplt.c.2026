# Manuelles Charakterisierungs-Testprotokoll (COBOL)

Dieses Protokoll wird fuer "Vorher"- und "Nachher"-Version gleich ausgefuehrt.
Beide Programme muessen fuer dieselbe Eingabe dasselbe Ergebnis liefern, wenn das
Refactoring das Verhalten nicht veraendert hat.

## Fall 1: Einfacher Auftrag ohne Rabatt

- Eingabe: Menge 2, Einzelpreis 1000 Cent, kein Rabattcode, Kunde C-1
- Erwartetes Ergebnis: 2499 Cent

## Fall 2: SAVE10-Rabatt

- Eingabe: Menge 2, Einzelpreis 1000 Cent, Rabattcode SAVE10, Kunde C-1
- Erwartetes Ergebnis: 2299 Cent

## Fall 3: VIP20-Rabatt mit passendem Kundenpraefix

- Eingabe: Menge 1, Einzelpreis 1000 Cent, Rabattcode VIP20, Kunde VIP-7
- Erwartetes Ergebnis: 1299 Cent

## Fall 4: VIP20-Rabatt ohne passenden Kundenpraefix

- Eingabe: Menge 1, Einzelpreis 1000 Cent, Rabattcode VIP20, Kunde C-1
- Erwartetes Ergebnis: 1499 Cent (kein Rabatt, da Praefix fehlt)

## Fall 5: Preis oberhalb der 5000-Schwelle

- Eingabe: Menge 1, Einzelpreis 7500 Cent, kein Rabattcode
- Erwartetes Ergebnis: 7500 Cent (keine Addition, da der Preis nicht unter 5000 liegt)

## Fall 6: Preis unmittelbar unter der 5000-Schwelle

- Eingabe: Menge 1, Einzelpreis 4999 Cent, kein Rabattcode
- Erwartetes Ergebnis: 5498 Cent (4999 + 499)

## Fall 7: Preis genau auf der 5000-Schwelle

- Eingabe: Menge 1, Einzelpreis 5000 Cent, kein Rabattcode
- Erwartetes Ergebnis: 5000 Cent (die Bedingung ist `A < 5000`)

## Fall 8: Rabatt senkt den Preis unter die 5000-Schwelle

- Eingabe: Menge 1, Einzelpreis 5550 Cent, Rabattcode SAVE10, Kunde C-1
- Erwartetes Ergebnis: 5494 Cent (5550 minus 10 Prozent ergibt 4995; danach werden 499 addiert)

## Fall 9: SAVE10 mit nicht ganzzahligem Rabattbetrag

- Eingabe: Menge 1, Einzelpreis 1001 Cent, Rabattcode SAVE10, Kunde C-1
- Erwartetes Ergebnis: 1399 Cent (der Rabattbetrag 100,1 wird beim Speichern in `A` abgeschnitten; danach werden 499 addiert)

## Fall 10: VIP20 mit knapp verfehltem Kundenpraefix

- Eingabe: Menge 1, Einzelpreis 1000 Cent, Rabattcode VIP20, Kunde XVIP-7
- Erwartetes Ergebnis: 1499 Cent (die ersten vier Zeichen sind nicht `VIP-`; daher kein Rabatt)

## Fall 11: Maximal darstellbarer Preis ohne Ueberlauf

- Eingabe: Menge 1, Einzelpreis 9999999 Cent, kein Rabattcode
- Erwartetes Ergebnis: 9999999 Cent (der Wert passt in `A PIC 9(7)`)

## Noch festzulegende Fehlerfaelle

Ungueltige Eingaben und ein Produkt, das den darstellbaren Wertebereich von `A PIC 9(7)` ueberschreitet, sind nicht als Tests mit Soll-Ergebnis aufgenommen. Das erwartete Fehlerverhalten ist im Programm nicht festgelegt und muss vor solchen Tests fachlich entschieden werden.

## Durchfuehrung

1. Beide Programme mit dem im Unternehmen genutzten Compiler uebersetzen.
2. Jeden Fall mit identischen Eingaben fuer beide Programme ausfuehren.
3. Ausgaben vergleichen.
4. Abweichungen dokumentieren und vor der Freigabe klaeren.
5. Erst nach vollstaendiger Uebereinstimmung gilt das Refactoring als abgeschlossen.
