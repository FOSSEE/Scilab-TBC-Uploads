
clear;
clc;

// Example: 11.6
// Page: 465

printf("Example: 11.6 - Page: 465\n\n");

// Solution

//*****Data******//
Temp = 50 + 273;// [K]
w2 = 60;// [g]
w1 = 1500;// [g]
M1 = 18;// [g/mol]
M2 = 180;// [g/mol]
Vl = 18*10^(-6);// [Molar Volume of water, cubic m/mol]
R = 8.314;// [J/mol K]
//***************//

// Mole fraction of glucose:
x2 = (w2/M2)/((w2/M2) + (w1/M1));
// Applying Eqn. (11.45):
P = R*Temp*x2/Vl;// [N/square m]
P = P/1000;// [kPa]
printf("Osmotic Pressure is %.2f kPa\n",P);