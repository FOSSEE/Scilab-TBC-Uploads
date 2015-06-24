//Problem 40.18: A coaxial cable 7.5 km long has a core 10 mm diameter and a sheath 25 mm diameter, the sheath having negligible thickness. Determine for the cable (a) the inductance, assuming nonmagnetic materials, and (b) the capacitance, assuming a dielectric of relative permittivity 3.

//initializing the variables:
u0 = 4*%pi*1E-7; 
ur = 1;
e0 = 8.85E-12;
er = 3;
da = 0.010; // in m
db = 0.025; // in m
l = 7500; // in m

//calculation:
//inductance per metre length
L = (u0*ur/(2*%pi))*(0.25 + log(db/da))
//Since the cable is 7500 m long,
L7500 = L*7500
//capacitance C
C = 2*%pi*e0*er/(log(db/da))
////Since the cable is 7500 m long,
C7500 = C*7500

printf("\n\n Result \n\n")
printf("\ninductance is %.5f H",L7500)
printf("\ncapCItance is %.2E F",C7500)