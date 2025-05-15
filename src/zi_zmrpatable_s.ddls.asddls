@EndUserText.label: 'ZMRPA table Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@ObjectModel.semanticKey: [ 'SingletonID' ]
@UI: {
  headerInfo: {
    typeName: 'ZmrpaTableAll'
  }
}
define root view entity ZI_ZmrpaTable_S
  as select from I_Language
    left outer join I_CstmBizConfignLastChgd on I_CstmBizConfignLastChgd.ViewEntityName = 'ZI_ZMRPATABLE'
  composition [0..*] of ZI_ZmrpaTable as _ZmrpaTable
{
  @UI.facet: [ {
    id: 'ZI_ZmrpaTable', 
    purpose: #STANDARD, 
    type: #LINEITEM_REFERENCE, 
    label: 'ZMRPA table', 
    position: 1 , 
    targetElement: '_ZmrpaTable'
  } ]
  @UI.lineItem: [ {
    position: 1 
  } ]
  key 1 as SingletonID,
  _ZmrpaTable,
  @UI.hidden: true
  I_CstmBizConfignLastChgd.LastChangedDateTime as LastChangedAtMax
  
}
where I_Language.Language = $session.system_language
