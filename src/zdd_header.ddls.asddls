@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cabecera'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zdd_header as select from zta_vbak
//composition of target_data_source_name as _association_name
{
    key vbeln as Vbeln,
    erdat as Erdat,
    erzet as Erzet,
    auart as Auart,
//    netwr as Netwr,
    waerk as Waerk,
    vkorg as Vkorg,
    vtweg as Vtweg,
    spart as Spart,
    kunnr as Kunnr
//    _association_name // Make association public
}
