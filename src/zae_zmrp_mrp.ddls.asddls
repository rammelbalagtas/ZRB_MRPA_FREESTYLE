@EndUserText.label: 'MRP'
define abstract entity ZAE_ZMRP_MRP
{
  key mrp               : zmrp;
      dummyKey          : abap.char(1);
      name              : zmrp;
      openDelivery      : abap.numc(6);
      boQty             : abap.numc(6);
      currentUNR        : abap.numc(6);
      newUNR            : abap.numc(6);
      currentQA         : abap.numc(6);
      newQA             : abap.numc(6);
      currentBlock      : abap.numc(6);
      newBlock          : abap.numc(6);
      currentAvailable  : abap.numc(6);
      _DummyAssociation : association to parent ZAE_ZMRP_MATERIAL on $projection.dummyKey = _DummyAssociation.dummyKey;
      data              : composition [0..*] of ZAE_ZMRP_CUSTOMER;
}
