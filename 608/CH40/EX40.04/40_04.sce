//Problem 40.04: A single-core concentric cable has a capacitance of 80 pF per metre length. The relative permittivity of the dielectric is 3.5 and the core diameter is 8.0 mm. Determine the internal diameter of the sheath.

//initializing the variables:
C = 80E-12; // in Farads
e0 = 8.85E-12; 
er = 3.5;
d0 = 0.008; // in m

//calculation: 
//internal diameter
di = d0*(%e^(2*%pi*e0*er/C))

printf("\n\n Result \n\n")
printf("\n internal diameter is %.5f m.",di)