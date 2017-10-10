clear
//
//direct online starter case a
//ist=isc=5*ifl  //where ist is starting current and isc is short circuit current
//tst/tfl=(ist/ifl)**2-->substitute the above equation of ist here where ifl cancels out in numerator and denominator
//tst=1.25*tfl //tst is starting torque
printf("\n tst=1.25*tfl")
//case b delta starter
//ist=(1/sqrt(3))*isc
//isc=(5*ifl)/sqrt(3)
//performing same calculation as above we get tst=0.4166*tfl
printf("\n tst=0.4166*tfl")
//case c auto transformer starter
//ist=2*ifl
//tst/tfl=(2/1)**2*0.5
printf("\n tst=0.2*tfl")
//case d
//with a rotor resistance starter the effect is same as that of auto transformer starter since in both cases the starting current is reduce to twice the full load current
printf("\n tst=0.2*tfl")
