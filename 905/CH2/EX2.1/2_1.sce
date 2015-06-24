clear;
clc;

// Illustration 2.1
// Page: 94

printf('Illustration 2.1 -  Page: 94\n\n');

// solution

//*****Data*****//
// a-oxygen   b-stagnant water
T = 310; // [K]
// Since the solubility of oxygen in water at 310 K is extremely low, we are dealing with dilute solutions
k_L = 3.3*10^-5; // [coefficient based on the oxygen concentration difference in the water, m/s]
row = 993; // [kg/cubic m]
M_b = 18; // [gram/mole]
//*****//
 
// Since we are dealing with very dilute solutions
// Therefore, c = (row/M_avg) = row/M_b
c = row/M_b; // [kmole/cubic m]
// Using equation 2.10
k_x = k_L*c; // [kmole/square m.s]
printf("The mass-transfer coefficient based on the mole fraction of oxygen in the liquid is %e kmole/square m.s\n\n",k_x);

 