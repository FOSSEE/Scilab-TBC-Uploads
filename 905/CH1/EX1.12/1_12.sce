clear;
clc;

// Illustration 1.12
// Page: 34

printf('Illustration 1.12 - Page:34 \n\n');
// Solution

//*****Data*****//
//  ammonia-1  nitrogen-2   hydrogen-3
T = 300; // [K]
P = 1; // [bar]
y_1 = .40;
y_2 = .20;
y_3 = .40;
//*****//

// The binary diffusivities are the same as for Example 1.11.
D_12 = 0.237; // [square cm/s]
D_13 = 0.728; // [square cm/s]

// mole fractions of nitrogen (2) and hydrogen (3) on an ammonia (1)-free base from equation (1.61)
y_21 = y_2/(1-y_1);
y_31 = y_3/(1-y_1);
// Substituting in equation (1.60) gives us
D_1eff = 1/((y_21/D_12)+(y_31/D_13));
printf("The effective diffusivity of ammonia in the gaseous mixture is  %e square cm/s",D_1eff); 