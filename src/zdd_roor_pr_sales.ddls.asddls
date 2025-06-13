@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección Raíz para Pedidos'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zdd_roor_pr_sales
  as select from zdd_pr_sales
  //  composition [0..*] of zdd_pr_sales_items as _Items
  association [0..*] to zdd_pr_sales_items as _Items on $projection.Vbeln = _Items.Vbeln
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

      _Items // Make association public
}
