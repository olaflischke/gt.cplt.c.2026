## Annahme und Schutzkriterien

Der Plan behandelt das aktuelle Verhalten als Referenz, nicht als fachlich zu korrigierende Regel. Bei jedem Schritt müssen Eingabereihenfolge, Ausgabeformat, Rabattreihenfolge, Ganzzahlverhalten und die Addition von `499` unverändert bleiben. Die vorhandenen `PIC`-Definitionen werden nicht geändert.

Als Prüfbasis dienen das `COBOL-Programm` und das `manuelle Charakterisierungs-Testprotokoll`.

| Schritt | Ziel | Prüfung |
|---|---|---|
| **0. Referenz sichern** | Vor Änderungen das Programm mit dem vorgesehenen Compiler übersetzen und die Ein- und Ausgaben sowie den Return-Code für alle Protokollfälle festhalten. | Die erwarteten Ergebnisse stimmen mit der Vorher-Version überein. Die tatsächliche Ausgabe wird exakt festgehalten, nicht nur als Betrag interpretiert. |
| **1. `A` umbenennen** | `A` durch einen sprechenden Namen wie `TOTAL-PRICE` ersetzen – ausschließlich die Bezeichnung, keine Berechnung ändern. | Übersetzen; alle Protokollfälle ausführen; Ausgabe und Return-Code mit der Referenz vergleichen. |
| **2. `B` umbenennen** | `B` etwa in `QUANTITY` umbenennen und alle Verwendungen anpassen. | Erneut übersetzen und alle Fälle gegen die Referenz vergleichen. |
| **3. `C` umbenennen** | `C` etwa in `UNIT-PRICE` umbenennen. | Erneut übersetzen und alle Fälle gegen die Referenz vergleichen. |
| **4. `D` umbenennen** | `D` in `DISCOUNT-CODE` umbenennen. Die Feldlänge und den Vergleich mit `SAVE10` und `VIP20` unverändert lassen. | Erneut übersetzen; insbesondere die SAVE10- und VIP20-Fälle vergleichen. |
| **5. `E` umbenennen** | `E` in `CUSTOMER-ID` umbenennen. Die Prüfung der ersten vier Zeichen unverändert lassen. | Erneut übersetzen; VIP-Fälle mit passendem und nicht passendem Präfix vergleichen. |
| **6. Feste Werte benennen** | Rabattcodes, Prozentsätze, Prozentbasis, Schwelle und Addition durch benannte Konstanten ersetzen. Dabei nur eine Konstante nach der anderen einführen und den COBOL-Dialekt des Compilers beachten. | Nach jeder Konstante übersetzen und alle Protokollfälle vergleichen. Besonders auf unveränderte Berechnung und Abschneiden von Nachkommastellen achten. |
| **7. Basispreisberechnung auslagern** | Die Multiplikation in einen benannten COBOL-Abschnitt (Paragraph) verschieben; Reihenfolge und Ausdruck `Menge * Einzelpreis` beibehalten. | Übersetzen und alle Fälle vergleichen; zusätzlich die maximal darstellbare Preis-Eingabe prüfen. |
| **8. Rabattlogik auslagern** | Die bestehende Verzweigung in einen eigenen Paragraphen verschieben. Priorität und Bedingungen exakt beibehalten: zuerst `SAVE10`, andernfalls `VIP20` mit Präfixprüfung. | Übersetzen und Fälle 2–4 sowie 8–10 vergleichen. |
| **9. Schwellenlogik auslagern** | Die Prüfung `Preis < 5000` und die Addition von `499` in einen eigenen Paragraphen verschieben, ohne die Regel umzudeuten. | Übersetzen und insbesondere Fälle 1, 5–9 vergleichen. |
| **10. Abschließender Regressionstest** | Den gesamten Testumfang nach allen Refactoring-Schritten erneut ausführen. | Alle elf Fälle gegen die gesicherte Vorher-Version vergleichen: exakte Ausgabe und Return-Code müssen übereinstimmen. |

Das Auslagern in Paragraphen sollte nur die Struktur ändern: keine neue Eingabevalidierung, keine Änderung an Rundung oder Feldgrößen und keine Ersetzung der `499`-Addition durch eine Mindestpreislogik. Solche Änderungen würden das äußere Verhalten betreffen und wären daher separate fachliche Änderungen, keine verhaltensneutrale Refaktorierung.