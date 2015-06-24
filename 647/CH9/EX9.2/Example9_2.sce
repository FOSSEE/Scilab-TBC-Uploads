clear;
clc;

// Example: 9.2
// Page: 338

printf("Example: 9.2 - Page: 338\n\n");

// Solution

//*****Data******//
Vol = 2;// [Volume of the mixture, cubic m/mol]
y1 = 0.4;// [mole fraction of alcohol, cubic m/mol]
V1_bar = 38.3*10^(-6);// [partial molar volume of alcohol, cubic m/mol]
V2_bar = 17.2*10^(-6);// [partial molar volume of water, cubic m/mol]
V1 = 39.21*10^(-6);// [molar volume of alcohol, cubic m/mol]
V2 = 18*10^(-6);// [molar volume of water, cubic m/mol]
//*************//

// From Eqn. 9.9:
V = y1*V1_bar + (1 - y1)*V2_bar;// [molar volume of the solution]
n = Vol/V;// [number of moles of solution]
n1 = y1*n;// [number of moles of alcohol required]
n2 = (1 - y1)*n;// [number of moles of water required]
V_alcohol = V1*n1;// [Volume of alcohol required, cubic m]
V_water = V2*n2;// [Volume of water required, cubic m]
printf("Volume of alcohol required is %.3f cubic m while volume of water required is %.3f cubic m\n",V_alcohol,V_water);