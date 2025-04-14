@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Raíz de Pedidos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zdd_root_pedidos
  as select from zta_vbak
  composition [0..*] of zdd_child_items_ped as _Child_Itms
  association [1..1] to zdd_clientes        as _Cte on $projection.Kunnr = _Cte.Kunnr
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

      _Child_Itms,
      _Cte
}
