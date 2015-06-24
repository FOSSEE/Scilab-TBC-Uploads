// Example 9.7
clear all;
clc;

// Given data
phi = 2.4*10^5;                               // Flux in x-rays/cm^2-sec
// From Figure 9.9
// To receive an exposure rate of 1 mR/hr at 50 keV, the flux is 8*10^3 x-rays/cm^2-sec
phi_eq = 8*10^3;                              // Equivalent flux in x-rays/cm^2-sec
X_dot_eq = 1;                                 // Equivalent Exposure rate in mR/hr
X_dot = (phi*X_dot_eq)/phi_eq;                // Exposure rate of the operator in mR/hr
// From Figure 9.10 at 50 kV energy, the energy dependent function is
f_bone = 3.3;
f_muscle = 0.93;
f_fat = 0.9;
// Using data from Table 9.2
Q = 1;                                        // Quality factor for x-rays
// Calculation
D_dot_bone = X_dot*f_bone*Q;                  // Dose equivalent rate in bone
D_dot_muscle = X_dot*f_muscle*Q;              // Dose equivalent rate in muscle
D_dot_fat = X_dot*f_fat*Q;                    // Dose equivalent rate in fat
// Result
printf(" \n Dose equivalent rate in bone = %d mrem/hour \n",ceil(D_dot_bone));
printf(" \n Dose equivalent rate in muscle = %d mrem/hour \n",ceil(D_dot_muscle));
printf(" \n Dose equivalent rate in fat = %d mrem/hour \n",ceil(D_dot_fat));

