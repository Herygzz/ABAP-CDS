@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Posicicones de Pedidos de Cliente'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdd_pos_pedido_cte
  as select from zta_vbap
  association [1..1] to zdd_pedidos_cte as _Pedidos on $projection.Vbeln = _Pedidos.Vbeln
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

      _Pedidos
}
