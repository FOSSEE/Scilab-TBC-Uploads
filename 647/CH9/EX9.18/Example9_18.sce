clear;
clc;

// Example: 9.18
// Page: 364

printf("Example: 9.18 - Page: 364\n\n");

// Solution

//*****Data******//
n1 = 0.7;// [moles of helium]
n2 = 0.3;// [moles of argon]
R = 8.314;// [J/mol K]
T = 273 + 25;// [K]
//******************//

n = n1 + n2;// [total moles]
x1 = n1/n;// [mole fraction of helium]
x2 = n2/n;// [mole fraction of argon]
deltaG_mix = n*R*T*(x1*log(x1) + x2*log(x2));// [J]
printf("The free energy change of mixing is %.2f J\n",deltaG_mix);

// Since the gases are ideal:
deltaH_mix = 0;// [J]
printf("The enthalpy change of mixing is %d J\n",deltaH_mix);