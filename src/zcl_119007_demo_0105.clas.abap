CLASS zcl_119007_demo_0105 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119007_demo_0105 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    data text type string value 'Hallo'.
    data text2 type string value 'Welt'.
    data text3 type string.

    "Verknüpfung mehrerer Zeichenketten
    text3 = text && ' ' && text2 && ' ' && '!'.
    out->write(  text3 ).

    "Verwenden eines Zeichenketten-Templates
    text3 = |{ text } { text2 }!|.
    out->write(  text3 ).

    "Zeichenkettenfunktionen
    SPLIT text3 AT | | into text text2. "Aufteilen

    data number_of_characters type i.
    number_of_characters = strlen( text3 ). "Stringlength -> Zeichenkettenlänge
    text3 = to_upper( text3 ). "Umsetzen in Großbuchstaben

    out->write( |Länge von '  ':{ strlen( '  ' ) }| ).

  ENDMETHOD.
ENDCLASS.
