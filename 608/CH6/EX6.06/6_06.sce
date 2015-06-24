//Problem 6.06: Two parallel plates having a pd of 200 V between them are spaced 0.8 mm apart. What is the electric field strength? Find also the flux density when the dielectric between the plates is (a) air, and (b) polythene of relative permittivity 2.3

//initializing the variables:
d = 0.8E-3; // in m
e0 = 8.85E-12; // in F/m
era = 1; // for air
erp = 2.3; // for polythene
V =200; // in Volts

//calculation:
E = V/d
//for air
Da = E*e0*era
//for polythene
Dp = E*e0*erp
printf("\n\nResult\n\n")
printf("\n (a)Electric flux density for air %.2E C/m2",Da)
printf("\n (b)Electric flux density for polythene  %.2E C/m2\n",Dp)