//Problem 35.08: A generator has an output impedance of (450 + i60) ohm. Determine the turns ratio of an ideal transformer necessary to match the generator to a load of (40 + i19) ohm for maximum transfer of power.

//initializing the variables:
Zo = 450 + %i*60; // in ohm
ZL = 40 + %i*19; // in ohm

//calculation: 
//transformer turns ratio tr = (N1/N2)
Zomag = (real(Zo)^2 + imag(Zo)^2)^0.5
ZLmag = (real(ZL)^2 + imag(ZL)^2)^0.5
tr = (Zomag/ZLmag)^0.5

printf("\n\n Result \n\n")
printf("\n the transformer turns ratio is %.2f",tr)