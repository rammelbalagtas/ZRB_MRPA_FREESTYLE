@EndUserText.label: 'Copy ZMRPA table'
define abstract entity ZD_CopyZmrpaTableP
{
  @EndUserText.label: 'New Plant'
  @UI.defaultValue: #( 'ELEMENT_OF_REFERENCED_ENTITY: Plant' )
  Plant : ZDE_PLANT2;
  @EndUserText.label: 'New MRP'
  @UI.defaultValue: #( 'ELEMENT_OF_REFERENCED_ENTITY: Mrp' )
  Mrp : ZMRP;
  @EndUserText.label: 'New Customer'
  @UI.defaultValue: #( 'ELEMENT_OF_REFERENCED_ENTITY: Customer' )
  Customer : ZDE_CUSTOMER;
  @EndUserText.label: 'New Material'
  @UI.defaultValue: #( 'ELEMENT_OF_REFERENCED_ENTITY: Material' )
  Material : ZDE_MATERIAL;
  
}
