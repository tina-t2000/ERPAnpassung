CLASS zcl_119007_exercise_0101 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119007_exercise_0101 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

 data Reisenummer type  /dmo/travel_id.
 data Reisebeschreibung type /dmo/description.
 data Reisebeginn type /dmo/begin_date.
 data Reiseende type /dmo/end_date.

 Reisenummer = '00000001'.
 Reisebeschreibung = 'ItalienUrlaub2021'.
 Reisebeginn = '20210807'.
 Reiseende = '20210828'.

  out->write( 'Reisenummer: ' && Reisenummer ).
   out->write(  'Reisebeschreibung: ' && Reisebeschreibung ).
    out->write( 'Reisebeginn: ' && Reisebeginn ).
     out->write(  'Reiseende: ' && Reiseende ).

  ENDMETHOD.
ENDCLASS.
