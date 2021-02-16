CLASS zcl_119007_demo_0104 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119007_demo_0104 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data carrier_id type /dmo/carrier_id value 'LH'.
  data flight_date type /dmo/flight_date value '20210209'.
  data is_fulfilled type c length 1.


  "Einfachverzweigung

  IF NOT ( flight_date >= '20210101' AND flight_date <= '20211231' )
  OR carrier_id  <> 'LH'. "<> bedeutet ungleich, = bedeutet gleich
  is_fulfilled = 'X'.
  ELSE.
  is_fulfilled = ''.
  ENDIF.

  "Überprüft quasi den Wannabe Boolean Wert

  If is_fulfilled IS NOT INITIAL.
  out->write( 'Bedingung erfüllt also X' ).
  ENDIF.

  "MERHFACHVERZWEIGUNG

  CASE carrier_id.
    WHEN 'LH' OR 'lH' OR 'Lh' OR 'lh'.
        out->write( 'Lufthansa' ).
    WHEN 'BA'.
        out->write( 'British Airways' ).
    WHEN OTHERS.
        out->write( 'Sonstiges' ).
  ENDCASE.


  ENDMETHOD.
ENDCLASS.
