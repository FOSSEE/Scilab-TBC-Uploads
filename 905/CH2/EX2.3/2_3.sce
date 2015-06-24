clear;
clc;

// Illustration 2.3
// Page: 96

printf('Illustration 2.3 -  Page: 96\n\n');

// solution

//*****Data*****//
// a-methanol   b-water
P = 101.3; // [kPa]
y_a1 = 0.707; // [mole fraction at interface]
y_a2 = 0.656; // [mole fraction at bulk of the gas]
k_g = 1.62*10^-5; // [mass-transfer coefficient at a point in the column, kmole/square m.s.kPa]
//*****//

// Using equation 2.14
k_y = k_g*P; // [kmole/square m.s]
// Using equation 2.12
N_a = k_y*(y_a1-y_a2); // [kmole/square m.s]
printf("The methanol flux at the point of given mass transfer coefficient is %e kmole/square m.s\n\n",N_a);
