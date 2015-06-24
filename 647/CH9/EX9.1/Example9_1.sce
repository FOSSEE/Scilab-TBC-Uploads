clear;
clc;

// Example: 9.1
// Page: 338

printf("Example: 9.1 - Page: 338\n\n");

// Solution

//*****Data******//
V1_bar = 52.37*10^(-6);// [partial molar volume of ethanol, cubic m/mol]
y1 = 0.5;// [mole fraction of ethanol]
Density = 800.21;// [kg/cubic m]
M1 = 46*10^(-3);// //[Molecular wt. of ethanol,kg/mol]
M2 = 18*10^(-3);// [Molecular wt. of water,kg/cmol]
//*************//

y2 = 1 - y1;// [mole fraction of water]
M = y1*M1 + y2*M2;// [Molecular wt. of mixture, kg/mol]
V = M/Density;// [Volume of mixture, cubic m/mol]
// From Eqn. 9.9:
V2_bar = (V - y1*V1_bar)/y2;// [partial molar volume of water, cubic m/mol]
printf("Partial molar volume of water is %.2e cubic m/mol\n",V2_bar);