clear;
clc;

// Illustration 2.2
// Page: 95

printf('Illustration 2.2 -  Page: 95\n\n');

// solution

//*****Data*****//
//  a-ammonia   b-air
T = 300; // [K]
P = 1; // [atm]
y_a1 = 0.8; // [ammonia mole fraction in the bulk of the gas phase]
y_a2 = 0.732; // [ammonia gas-phase mole fraction on interface]
N_a = 4.3*10^-4; // [ammonia flux,  kmole/square m.s]
//*****//

// Using equation 2.2
F_g = N_a/log((1-y_a2)/(1-y_a1)); // [kmole/square m.s]
printf("The mass-transfer coefficient in the gas phase at that point where flux is 4.3*10^-4 is %e kmole/square m.s\n\n",F_g);