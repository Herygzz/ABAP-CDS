CLASS zcl_insert_cust_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    METHODS: m_insert.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_insert_cust_data IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    m_insert( ).
    out->write( 'Registros Ingresados Correctamente' ).
  ENDMETHOD.

  METHOD m_insert.
    DATA: lwa_kna1 TYPE zta_kna1.
    DATA: lwa_vbak TYPE zta_vbak.
    DATA: lwa_vbap TYPE zta_vbap.

    DATA: lt_kna1 TYPE STANDARD TABLE OF zta_kna1.
    DATA: lt_vbak TYPE STANDARD TABLE OF zta_vbak.
    DATA: lt_vbap TYPE STANDARD TABLE OF zta_vbap.

    FREE: lt_kna1[],
          lt_vbak[],
          lt_vbap[].

    lt_kna1 = VALUE #( ( kunnr = '2000008381' land1 = 'MX' name1 = 'VIDRIERA MONTERREY, S.A. DE C.V.' name2 = '' ort01 = 'MONTERREY' regio = 'NL' stras = 'KERAMOS PONIENTE 225' stcd1 = 'VMO091206CMA' )
                       ( kunnr = '2000008507' land1 = 'MX' name1 = 'CX-VITRO COSMOS, S.A. DE C.V.' name2 = '' ort01 = 'DELEGACION MIGUEL HIDALGO,D.F.' regio = 'NL' stras = 'LAGO ZURICH 243' stcd1 = 'VCO340523IV4' )
                      ).

    lt_vbak = VALUE #( ( vbeln = '880000014' erdat = '20080726' erzet = '02:12:58' auart = 'Z002' netwr = '49600' waerk = 'MXN' vkorg = '11' vtweg = '10' spart = '20' kunnr = '2000008381' )
                       ( vbeln = '880000015' erdat = '20080726' erzet = '02:15:27' auart = 'Z002' netwr = '19480' waerk = 'MXN' vkorg = '11' vtweg = '10' spart = '20' kunnr = '2000008381' )
                       ( vbeln = '880000030' erdat = '20080731' erzet = '05:12:09' auart = 'Z002' netwr = '96101.25' waerk = 'MXN' vkorg = '11' vtweg = '10' spart = '20' kunnr = '2000008507' )
                     ).

    lt_vbap = VALUE #( ( vbeln = '880000014' posnr = '10' matnr = '10062' arktx = 'EXHIBIDORES CIRCULO K' meins = 'EA' netwr = '49600' waerk = 'MXN' kwmeng = '1' vrkme = 'EA' werks = '5010' netpr = '49600' )
                       ( vbeln = '880000015' posnr = '10' matnr = '10026' arktx = 'COPETE CENEFAS STOPPERS CASA LEY' meins = 'EA' netwr = '6250' waerk = 'MXN' kwmeng = '1' vrkme = 'EA' werks = '5010' netpr = '6250' )
                       ( vbeln = '880000015' posnr = '20' matnr = '10026' arktx = 'COPETE CENEFAS STOPPERS CASA LEY' meins = 'EA' netwr = '13230' waerk = 'MXN' kwmeng = '1' vrkme = 'EA' werks = '5010' netpr = '13230' )
                       ( vbeln = '880000030' posnr = '10' matnr = '10062' arktx = 'EXHIBIDORES CIRCULO K' meins = 'EA' netwr = '96101.25' waerk = 'MXN' kwmeng = '1' vrkme = 'EA' werks = '5010' netpr = '96101.25' )
                     ).

*    INSERT zta_kna1 FROM TABLE @lt_kna1.
*    INSERT zta_vbak FROM TABLE @lt_vbak.
*    INSERT zta_vbap FROM TABLE @lt_vbap.

  ENDMETHOD.
ENDCLASS.
