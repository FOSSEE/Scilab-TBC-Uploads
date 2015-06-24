//Problem 40.15: A 400 pF capacitor is charged to a p.d. of 100 V. The dielectric has a cross-sectional area of 200 cm2 and a relative permittivity of 2.3. Calculate the energy stored per cubic metre of the dielectric.

//initializing the variables:
e0 = 8.85E-12; 
er = 2.3;
A = 0.02; // in m2
C = 400E-12; // in Farad
V = 100; // in Volts

//calculation:
//energy stored per unit volume of dielectric,
W = ((C*V)^2)/(2*e0*er*A^2)

printf("\n\n Result \n\n")
printf("\n energy stored per unit volume of dielectric is %.4f J/m3",W)