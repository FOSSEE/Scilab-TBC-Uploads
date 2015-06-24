clear;
clc;

// Example: 4.7
// Page: 125

printf("Example: 4.7 - Page: 125\n\n");

// Solution

//*****Data*****//
// HC : Heat of Combustion
HC_C2H2 = -310600; // [cal]
//**************//

// C2H2 + (5/2)O2 = 2CO2 + H2O
Q = -HC_C2H2;// [cal]
// The gases present in the flame zone after combustion are carbon dioxide, water vapor and the unreacted nitrogen of the air.
// Since (5/2) mole of oxygen were required for combustion, nitrogen required would be 10 mol.
// Hence the composition of the resultant gas would be 2 mol CO2, 1  ol H2 & 10 mol N2.
// Q = integrate('Cp(T)','T',T,298);
// On integrating we get:
// Q = 84.52*(T - 298) + 18.3*10^(-3)*(T^2 - 298^2)
deff('[y] = f(T)','y = Q - 84.52*(T - 298) - 18.3*10^(-3)*(T^2 - 298^2)');
T = fsolve(7,f);// [K]
printf("The maximum attainable temperature is %.1f K",T);