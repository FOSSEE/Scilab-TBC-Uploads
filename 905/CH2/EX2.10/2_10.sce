clear;
clc;

// Illustration 2.10
// Page: 127

printf('Illustration 2.10 -  Page: 127\n\n');

// solution

// Example 2.6 using equation 2.73
// Values of the dimensionless parameters calculated in Example 2.6
Re = 1223; // [Renoylds Number]
Sc = 0.905; // [Schmidt Number]
c = 0.039; // [molar density, kg/cubic m]
v = 1; // [gas velocity, m/s]
// Therefore 
Gm = c*v; // [kmole/square m.s]
// From equation 2.9 
// Kg*P = ky
// Therefore substituting in equation 2.73 we obtain
ky = 0.281*Gm/(Re^0.4*Sc^0.56); // [kmole/square m.s]
// Now equation 2.73 were obtained under very dilute concentrations
// Therefore
y_bm = 1; 
// From equation 2.6
F = ky*y_bm; // [kmole/square m.s]
printf("Mass transfer coefficient is %e kmole/square m.s\n\n",F);
