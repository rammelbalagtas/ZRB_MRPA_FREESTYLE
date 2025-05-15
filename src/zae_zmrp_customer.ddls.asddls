@EndUserText.label: 'Customer'
define abstract entity ZAE_ZMRP_CUSTOMER
{
  key name              : zde_customer;
      mrp               : zmrp;
      currentAvailable  : abap.numc(6);
      newAvailable      : abap.numc(6);
      _DummyAssociation : association to parent ZAE_ZMRP_MRP on $projection.mrp = _DummyAssociation.mrp;
}
