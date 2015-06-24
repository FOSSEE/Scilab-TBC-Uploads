//To calculate the free volume per unit cell
r = 0.1249;     //atomic radius, nm
a = 4*r/sqrt(3);      //lattice constant, nm
a_m = a*10^-9;        //lattice constant, m
V = a_m^3;       //volume of unit cell, m^3
PF = 0.68;      //packing factor for BCC
FV = 1 - PF;     //free volume
FV1 = FV*V;      //free volume per unit cell, m^3
printf("free volume per unit cell in m^3 is");
disp(FV1);
