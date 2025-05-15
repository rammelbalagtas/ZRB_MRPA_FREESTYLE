@EndUserText.label: 'MRP Range'
define abstract entity ZAE_ZMRP_MRPRANGE
{
  key mrp               : zmrp;
      dummyKey          : abap.char(1);
      _DummyAssociation : association to parent ZAE_ZMRP_FILTER on $projection.dummyKey = _DummyAssociation.dummyKey;
}
