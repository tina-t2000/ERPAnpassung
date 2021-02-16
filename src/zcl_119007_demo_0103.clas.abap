CLASS zcl_119007_demo_0103 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119007_demo_0103 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data result type p length 16 decimals 2.

  "Mathematische Operatoren in ABAP

  result = 5 + 3.
  out->write( 'Addition: ' && result ).
  result = 5 - 3.
  out->write( 'Subtraktion: ' && result ).
  result = 5 * 3.
  out->write( 'Multiplikation: ' && result ).
  result = 5 / 3.
  out->write( 'Division: ' && result ).
  result = 5 ** 3.
  out->write( 'Potenz: ' && result ).
  result = 5 DIV 3.
  out->write( 'Ganzzahlige Division: ' && result ).
  result = 5 MOD 3.
  out->write( 'Divisionsrest: ' && result ).






  ENDMETHOD.
ENDCLASS.
