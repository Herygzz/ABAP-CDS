CLASS lhc_zdd_root_pedidos DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PUBLIC SECTION.
    METHODS call_fm.

  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zdd_root_pedidos RESULT result.

ENDCLASS.

CLASS lhc_zdd_root_pedidos IMPLEMENTATION.

  METHOD call_fm.
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
