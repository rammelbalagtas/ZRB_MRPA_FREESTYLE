@EndUserText.label: 'ZMRPA table'
@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
define view entity ZI_ZmrpaTable
  as select from ZMRPADB
  association to parent ZI_ZmrpaTable_S as _ZmrpaTableAll on $projection.SingletonID = _ZmrpaTableAll.SingletonID
{
  key PLANT as Plant,
  key MRP as Mrp,
  key CUSTOMER as Customer,
  key MATERIAL as Material,
  OPENDELIVERY as Opendelivery,
  BOQTY as Boqty,
  UNR as Unr,
  QA as Qa,
  BLOCK as Block,
  AVAILABLE as Available,
  CREATEDBY as Createdby,
  CREATEDAT as Createdat,
  LASTCHANGEDBY as Lastchangedby,
  LASTCHANGEDAT as Lastchangedat,
  @Consumption.hidden: true
  1 as SingletonID,
  _ZmrpaTableAll
  
}
