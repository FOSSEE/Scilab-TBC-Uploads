//Problem 40.19: A single-phase power line comprises two conductors each with a radius 8.0 mm and spaced 1.2 m apart in air. Determine the inductance of the line per metre length ignoring internal linkages. Assume the relative permeability ur = 1.

//initializing the variables:
u0 = 4*%pi*1E-7; 
ur = 1;
e0 = 8.85E-12;
er = 3;
D = 1.2; // in m
a = 0.008; // in m

//calculation:
//inductance per metre length
L = (u0*ur/(%pi))*(log(D/a))

printf("\n\n Result \n\n")
printf("\ninductance is %.2E H/m",L)