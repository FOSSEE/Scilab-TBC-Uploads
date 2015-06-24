clear;
clc;
funcprot(0);

//Example - 2.6
//Page number - 47
printf("Example - 2.6 and Page number - 47\n\n");

//Given
T = 373.15;//[K] - Temperature
P = 101325;//[N/m^(2)] - Pressure
Tc = 647.1;//[K] - Critical temperature
Pc = 220.55*10^(5);//[N/m^(2)] - Critical pressure
w = 0.345;//acentric factor
Tr = T/Tc;// Reduced temperature
R = 8.314;//[J/mol*K] - UNiversal gas constant

B_0 = 0.083-(0.422/(Tr)^(1.6));
B_1 = 0.139-(0.172/(Tr)^(4.2));

//We know,(B*Pc)/(R*Tc) = B_0+(w*B_1)
B = ((B_0+(w*B_1))*(R*Tc))/Pc;//[m^(3)/mol] - Second virial coefficient

//We have, Z = 1+(B/V) and Z = (P*V)/(R*T). Substituting the value of Z,we get
// V^(2)-((R*T)/P)*V-((B*R*T)/P)=0 .Solving the quadratic equation by shreedharcharya rule
V1 = (((R*T)/P) + (((R*T)/P)^(2) + 4*1*((B*R*T)/P))^(1/2))/2*1;

printf(" The molar volume of water vapour is %f m^(3)/mol",V1);

//The roots are,V1 = 0.0003670 [m^(3)/mol] and V2 = 0.0302510 [m^(3)/mol].
//As 'V2' is near to ideal volume (0.030618 [m^(3)/mol]),it is taken as the molar volume
//The other root 'V1' hss no physical significance