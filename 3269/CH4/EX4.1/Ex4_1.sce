// Example 4.1
clear all;
clc;

// Given data
// Number of neutrons absorbed by Uranium-238 in resonances for every neutron absorbed in Uranium-235
n_resonance = 0.254;
// Number of neutrons absorbed by Uranium-238 at thermal energy for every neutron absorbed in Uranium-235
n_th = 0.64;
m = 1;                  // Amount of Uranium-235 consumed in kg
A_U = 235;              // Atomic mass number of Uranium-235
A_Pu = 239;             // Atomic mass number of Plutonium-239

// 1.
// Calculation 
C = n_resonance+n_th;
// Result
printf('\n Conversion ratio of the reactor = %4.3f \n',C);

// 2. 
// Calculation 
amt_Pu = m*C*A_Pu/A_U;
// Result
printf('\n Amount of Plutonium-239 produced in the reactor = %4.3f kg \n',amt_Pu);
