clear;
clc;

// Example: 5.21
// Page: 174

printf("Example: 5.21 - Page: 174\n\n");

// Solution

//*****Data*****//
t = 20*60;// [s]
P = 650;// [W]
T = 273 + 250;// [K]
//*************//

Q = P*t/1000;// [kJ]
deltaS = Q/T;// [kJ/K]
printf("Change in Entropy is %.2f kJ/K",deltaS);