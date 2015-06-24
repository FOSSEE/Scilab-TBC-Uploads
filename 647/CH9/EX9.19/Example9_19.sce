clear;
clc;

// Example: 9.19
// Page: 364

printf("Example: 9.19 - Page: 364\n\n");

// Solution

//*****Data******//
V = 20;// [Volume of vessel, L]
V1 = 12;// [Volume of Hydrogen, L]
V2 = 10;// [Volume of Nitrogen, L]
P = 1;// [atm]
T = 298;// [K]
P1 = 1;// [atm]
P2 = 1;// [atm]
R = 0.082;// [L atm/K mol]
//************//

n1 = P1*V1/(R*T);// [number of moles of Hydrogen]
n2 = P2*V2/(R*T);// [number of moles of Nitrogen]
n = n1 + n2;// [total number of moles]
Pfinal = n*R*T/V;// [atm]
p1 = Pfinal*n1;// [partial pressure of Hydrogen, atm]
p2 = Pfinal*n2;// [partial pressure of Nitrogen, atm]
deltaG_mix = R*T*(n1*log(p1/P1) + n2*log(p2/P2));// [J]
printf("Free Energy change of mixing is %.2f J\n",deltaG_mix);

// Since mixing is ideal:
deltaH_mix = 0;// [J]
printf("Enthalpy change in mixing is %.2f J\n",deltaH_mix);

deltaS_mix = - (deltaG_mix/T);// [J/K]
printf("Entropy Change in mixing is %.3f J/K\n",deltaS_mix);