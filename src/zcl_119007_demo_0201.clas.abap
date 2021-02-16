CLASS zcl_119007_demo_0201 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_119007_demo_0201 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  "Deklaration von Strukturen
  data connection type z119007_connnection.

  "Zugriff auf Strukturkomponenten
  connection-carrier_id = 'LH'.
  connection-connection_id = '0400'.
  connection-airport_from_id = 'FRA'.
  connection-airport_to_id = 'JFK'.

  out->write( |Kürzel der Fluggesellschaft: { connection-carrier_id }| ).
  out->write( |KVerbindungsnummer: { connection-connection_id }| ).
  out->write( |Kürzel der Fluggesellschaft: { connection-carrier_id }| ).
  out->write( |Kürzel der Fluggesellschaft: { connection-carrier_id }| ).


  data flight type z119007_flight.
  flight-carrier_id = 'LH'.
  flight-connection_id = '0400'.
  flight-flight_date = cl_abap_context_info=>get_system_date( ).
  flight-price = 500.
  flight-currency_code = 'EUR'.
  flight-plane_type_id = 'A380'.

  data flight_xt type Z119007_flight_extended.

  flight_xt = corresponding #( connection ).
  flight_xt = corresponding #( base ( flight_xt ) flight ).


  ENDMETHOD.
ENDCLASS.
