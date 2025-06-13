@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Posiciones'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdd_items
  as select from zta_vbap
  association [1..1] to zdd_head as _Header on $projection.Vbeln = _Header.Vbeln
{
      @UI.hidden: true
  key vbeln  as Vbeln,
      @UI.lineItem: [{ position: 10, importance: #HIGH }]
  key posnr  as Posnr,
      @UI.lineItem: [{ position: 20, importance: #HIGH }]
      matnr  as Matnr,
      @UI.lineItem: [{ position: 30, importance: #HIGH }]
      arktx  as Arktx,
      @UI.lineItem: [{ position: 40, importance: #HIGH }]
      meins  as Meins,
      @UI.lineItem: [{ position: 50, importance: #HIGH }]
      @Semantics.amount.currencyCode: 'waerk'
      netwr  as Netwr,
      @UI.lineItem: [{ position: 60, importance: #HIGH }]
      waerk  as Waerk,
      @UI.lineItem: [{ position: 70, importance: #HIGH }]
      @Semantics.quantity.unitOfMeasure: 'vrkme'
      kwmeng as Kwmeng,
      @UI.lineItem: [{ position: 80, importance: #HIGH }]
      vrkme  as Vrkme,
      @UI.lineItem: [{ position: 90, importance: #HIGH }]
      werks  as Werks,
      @UI.lineItem: [{ position: 100, importance: #HIGH }]
      @Semantics.amount.currencyCode: 'waerk'
      netpr  as Netpr,

      _Header
}
