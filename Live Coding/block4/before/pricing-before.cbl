       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRICING-BEFORE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  TOTAL-PRICE PIC 9(7) VALUE 0.
       01  QUANTITY PIC 9(2) VALUE 0.
       01  UNIT-PRICE PIC 9(7) VALUE 0.
       01  DISCOUNT-CODE PIC X(8).
       01  CUSTOMER-ID PIC X(10).

       PROCEDURE DIVISION.
           ACCEPT QUANTITY
           ACCEPT UNIT-PRICE
           ACCEPT DISCOUNT-CODE
           ACCEPT CUSTOMER-ID
           COMPUTE TOTAL-PRICE = QUANTITY * UNIT-PRICE
           IF DISCOUNT-CODE = 'SAVE10'
               COMPUTE TOTAL-PRICE = TOTAL-PRICE -
                   (TOTAL-PRICE * 10 / 100)
           ELSE
               IF DISCOUNT-CODE = 'VIP20'
                   IF CUSTOMER-ID(1:4) = 'VIP-'
                       COMPUTE TOTAL-PRICE = TOTAL-PRICE -
                           (TOTAL-PRICE * 20 / 100)
                   END-IF
               END-IF
           END-IF
           IF TOTAL-PRICE < 5000
               ADD 499 TO TOTAL-PRICE
           END-IF
           DISPLAY TOTAL-PRICE
           GOBACK.
