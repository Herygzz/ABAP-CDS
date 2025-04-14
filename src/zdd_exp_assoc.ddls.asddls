@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Esponer Asociación'
@Metadata.ignorePropagatedAnnotations: true

define view entity zdd_exp_assoc
  as select from zdd_pedidos_cte
{
  key Vbeln,
      Erdat,
      Erzet,
      Auart,
      @Semantics.amount.currencyCode: 'waerk'
      Netwr,
      Waerk,
      Vkorg,
      Vtweg,
      Spart,
      Kunnr,

      _Cte.Name1   as Nombre1,
      _Cte.Name2   as Nombre2,
      _Cte.Stcd1   as RFC,

      _Items.Posnr as Posicion,
      _Items.Matnr as Material,
      _Items.Arktx as MatDesc
      //      /* Associations */
      //      _Cte,
      //      _Items
}
