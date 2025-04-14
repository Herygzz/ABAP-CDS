@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Data Definition para Clientes'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity zdd_clientes
  as select from zta_kna1
{
  key kunnr as Kunnr,
      land1 as Land1,
      name1 as Name1,
      name2 as Name2,
      ort01 as Ort01,
      regio as Regio,
      stras as Stras,
      stcd1 as Stcd1
}
