CLASS zcl_119007_demo_0102 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119007_demo_0102 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Wichtige ABAP Standardtypen"

  DATA  i1 TYPE i. "i = integer
  DATA string1 TYPE string. "Zeichenkette dynamisch
  DATA c1 type c length 1 . "Character -> Man kann die Länge eingeben -> Zeichenkette fest
  DATA n1 type n length 5. "Numerische Folge (FÜr immer gleich lange Zahlen wie MatNr
  DATA d1 type d. " Datumstyp: 20210202, Zeichenketten der Länge 8
  DATA t1 type t. " Zeit: 123114, Zeichenkette der Länge 6
  DATA p1 type p length 16 decimals 2.  "gepackte Zahl (BSP: '734,23')
                                        " Dezimalzahlen müssen als Zeichenkette dargestellt werden
  DATA b1 type c length 1. "Wannabe Boolescher Wahrheitswert ('' = false, 'X' = true)

  "Deklaration variabler Datenobjekte - nicht machen

  "Lokaler Datentyp
  DATA carrier_id TYPE c length 3. " so nicht machen, da nur lokal und könnte von mehreren gebraucht werden

  "Globaler Datentyp
  DATA carrier_id2 TYPE /dmo/carrier_id. "Das hier verwenden, Datenelement

  "Wertzuweisung
  carrier_id = 'LH'. " Zuweisungsoperator
  DATA connection_id type /dmo/connection_id value '0400'. "statische Wertzuweisung
  DATA(flight_date) = '20210202'. "Wäre Char mit length 8, Compiler teilt Datentyp zu

  CLEAR carrier_id. "Initialisierung

  "Deklaration einer Konstante

  CONSTANTS co_pi type p length 2 decimals 2 value '3.14'.
    ENDMETHOD.

  ENDCLASS.
