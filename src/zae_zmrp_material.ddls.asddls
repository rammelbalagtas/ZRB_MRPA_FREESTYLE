@EndUserText.label: 'Material level data'
define root abstract entity ZAE_ZMRP_MATERIAL
{
  key dummyKey         : abap.char(1);
      name             : zde_material;
      openDelivery     : abap.numc(6);
      boQty            : abap.numc(6);
      currentUNR       : abap.numc(6);
      currentQA        : abap.numc(6);
      currentBlock     : abap.numc(6);
      currentAvailable : abap.numc(6);
      matlist        : composition [0..*] of ZAE_ZMRP_MATLIST;
      data             : composition [0..*] of ZAE_ZMRP_MRP;
}
