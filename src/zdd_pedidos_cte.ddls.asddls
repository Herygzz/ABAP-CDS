@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Posicicones de Pedidos de Cliente'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdd_pedidos_cte
  as select from zta_vbak
  association [1..*] to zdd_pos_pedido_cte as _Items on $projection.Vbeln = _Items.Vbeln
  association [1..1] to zdd_clientes       as _Cte   on $projection.Kunnr = _Cte.Kunnr
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

      _Items,
      _Cte
}
