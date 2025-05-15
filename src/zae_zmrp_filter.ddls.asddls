@EndUserText.label: 'Filter values for ZMRPA'
define root abstract entity ZAE_ZMRP_FILTER
{
  key dummyKey : abap.char(1);
      plant    : zde_plant;
      region   : abap.string;
      material : zde_material;
      matrange : composition [0..*] of ZAE_ZMRP_MATRANGE;
      mrprange : composition [0..*] of ZAE_ZMRP_MRPRANGE;
}
