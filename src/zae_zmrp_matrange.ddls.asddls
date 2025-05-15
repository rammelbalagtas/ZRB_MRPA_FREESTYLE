@EndUserText.label: 'material range'
define abstract entity ZAE_ZMRP_MATRANGE
{
  key material          : zde_material;
      dummyKey          : abap.char(1);
      _DummyAssociation : association to parent ZAE_ZMRP_FILTER on $projection.dummyKey = _DummyAssociation.dummyKey;
    
}
