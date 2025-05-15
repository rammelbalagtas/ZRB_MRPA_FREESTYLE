@EndUserText.label: 'Material list'
define abstract entity ZAE_ZMRP_MATLIST
{
  key sequence          : abap.numc(6);
  key material          : zde_material;
      dummyKey          : abap.char(1);
      _DummyAssociation : association to parent ZAE_ZMRP_MATERIAL on $projection.dummyKey = _DummyAssociation.dummyKey;

}
