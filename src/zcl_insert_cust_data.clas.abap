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
    DATA: lwa_mara TYPE zta_mara.

    DATA: lt_kna1 TYPE STANDARD TABLE OF zta_kna1.
    DATA: lt_vbak TYPE STANDARD TABLE OF zta_vbak.
    DATA: lt_vbap TYPE STANDARD TABLE OF zta_vbap.
    DATA: lt_mara TYPE STANDARD TABLE OF zta_mara.

    FREE: lt_kna1[],
          lt_vbak[],
          lt_vbap[],
          lt_mara[].

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

    lt_mara = VALUE #(
                        ( matnr = '1246016' maktx = 'DEL VALLEFRUT' )
                        ( matnr = '1247007' maktx = 'BOING 10OZ FR' )
                        ( matnr = '2288006' maktx = '2L BUD LIGHT' )
                        ( matnr = '3998018' maktx = '5G MT. VALLEY' )
                        ( matnr = '3998028' maktx = '2.5 G MT. VAL' )
                        ( matnr = '4709002' maktx = 'DALACIN 30 ML' )
                        ( matnr = '5101037' maktx = '11019302 ROYA' )
                        ( matnr = '5101039' maktx = '11037201 REDI' )
                        ( matnr = '5101040' maktx = '11036901 OPTI' )
                        ( matnr = '5101042' maktx = '995262000 AN' )
                        ( matnr = '5101044' maktx = 'BE DAY VEIL L' )
                        ( matnr = '5101046' maktx = '1015912 TIME' )
                        ( matnr = '5101047' maktx = '31610649 AN' )
                        ( matnr = '5102001' maktx = '26000570 TAPA' )
                        ( matnr = '5109019' maktx = '6031901 INTE' )
                        ( matnr = '5109020' maktx = '40212288 BO' )
                        ( matnr = '5109026' maktx = '30010076 AN' )
                        ( matnr = '5109028' maktx = 'C112113A DECO' )
                        ( matnr = '5109030' maktx = '21400435 SHIN' )
                        ( matnr = '5109032' maktx = '30110179 AN' )
                        ( matnr = '5109037' maktx = '43010044 AN' )
                        ( matnr = '5109040' maktx = '43910966 AN' )
                        ( matnr = '5109042' maktx = '11012020 ELAS' )
                        ( matnr = '5109043' maktx = '6050060 TIME' )
                        ( matnr = '5109044' maktx = '11012040 INTE' )
                        ( matnr = '5109048' maktx = 'ANEW CLINICAL' )
                        ( matnr = '5118001' maktx = '43210295 AN' )
                        ( matnr = '5119002' maktx = '20210257 AV' )
                        ( matnr = '5119015' maktx = '6003002 ROYA' )
                        ( matnr = '5119017' maktx = '11019701 ROYA' )
                        ( matnr = '5119019' maktx = '11017801 BUST' )
                        ( matnr = '5119020' maktx = '10310121 AN' )
                      ).
*    INSERT zta_kna1 FROM TABLE @lt_kna1.
*    INSERT zta_vbak FROM TABLE @lt_vbak.
*    INSERT zta_vbap FROM TABLE @lt_vbap.
    INSERT zta_mara FROM TABLE @lt_mara.

  ENDMETHOD.
ENDCLASS.
