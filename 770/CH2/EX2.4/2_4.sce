clear;
clc;

//Example - 2.4
//Page number - 45
printf("Example - 2.4 and Page number - 45\n\n");

//Given
T = 380;//[K] - Temperature
Tc = 562.1;//[K] - Critical temperature
P = 7;//[atm] - Pressure
P = P*101325;//[N/m^(2)]
Pc = 48.3;//[atm] - Critical pressure
Pc = Pc*101325;//[N/m^(2)]
R = 8.314;//[J/mol*K] - Universal gas constant
w = 0.212;// acentric factor
Tr = T/Tc;// Reduced temperature

B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));

//We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B = ((B_0+(w*B_1))*(R*Tc))/Pc;//[m^(3)/mol]
printf(" The second virial coefficient for benzene is %e m^(3)/mol\n",B);

//Compressibility factor is given by
Z = 1 + ((B*P)/(R*T));
printf(" The compressibility factor at 380 K is %f\n",Z);

//We know thar Z=(P*V)/(R/*T),therfore
V = (Z*R*T)/P;//[m^(3)/mol]
printf(" The molar volume is %e m^(3)/mol\n",V);

