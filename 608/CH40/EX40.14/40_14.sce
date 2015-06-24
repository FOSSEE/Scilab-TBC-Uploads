//Problem 40.14: A ceramic capacitor is to be constructed to have a capacitance of 0.01 μF and to have a steady working potential of 2.5 kV maximum. Allowing a safe value of field stress of 10 MV/m, determine (a) the required thickness of the ceramic dielectric, (b) the area of plate required if the relative permittivity of the ceramic is 10, and (c) the maximum energy stored by the capacitor.

//initializing the variables:
e0 = 8.85E-12; 
er = 10;
C = 0.01E-6; // in Farad
E = 10E6; // in V/m
V = 2500; // in Volts

//calculation:
//thickness of ceramic dielectric,
d = V/E
//cross-sectional area of plate
A = C*d/(e0*er)
//Maximum energy stored,
W = C*V*V/2

printf("\n\n Result \n\n")
printf("\n thickness of ceramic dielectric is %.2E m",d)
printf("\n cross-sectional area of plate, is %.4f m2",A)
printf("\n Maximum energy stored is %.4f J",W)