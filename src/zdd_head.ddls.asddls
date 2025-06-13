@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cabecera'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdd_head
  as select from zta_vbak
  association [0..*] to zdd_items as _Items on $projection.Vbeln = _Items.Vbeln
{
  key vbeln as Vbeln,
      erdat as Erdat,
      erzet as Erzet,
      auart as Auart,
      @Semantics.amount.currencyCode: 'waerk'
      netwr as Netwr,
      waerk as Waerk,
      vkorg as Vkorg,
      vtweg as Vtweg,
      spart as Spart,
      kunnr as Kunnr,

      _Items
}
