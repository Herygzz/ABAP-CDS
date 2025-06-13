@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección para Posiciones de Pedidos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdd_pr_sales_items
  as select from zta_vbap
  association to parent zdd_roor_pr_sales as _Root_Ped on $projection.Vbeln = _Root_Ped.Vbeln
{
  key vbeln  as Vbeln,
  key posnr  as Posnr,
      matnr  as Matnr,
      arktx  as Arktx,
      meins  as Meins,
      @Semantics.amount.currencyCode: 'waerk'
      netwr  as Netwr,
      waerk  as Waerk,
      @Semantics.quantity.unitOfMeasure: 'vrkme'
      kwmeng as Kwmeng,
      vrkme  as Vrkme,
      werks  as Werks,
      @Semantics.amount.currencyCode: 'waerk'
      netpr  as Netpr,

      _Root_Ped
}
