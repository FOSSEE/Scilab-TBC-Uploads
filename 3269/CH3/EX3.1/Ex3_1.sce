// Example 3.1
clear all;
clc;

// Given data
// 1 barn = 10^(-24) cm^2
sigma = 2.6*10^(-24);                   // Cross section of carbon-12 in cm^2
I = 5*10^8;                             // Intensity of neutron beam in neutrons/cm^2-sec
A = 0.1;                                // Cross sectional area of the beam in cm^2;
X = 0.05;                               // Thickness of the target in cm

// 1.
// Using the data given in Table I.3, Appendix II for carbon-12
N = 0.08*10^(24);                       // Atom density in atoms/cm^3
// Calculation 
IR = sigma*I*N*A*X;
// Result
printf('\n Total interaction rate = %2.1E interactions/sec \n',IR);

// 2. 
no = I*A;                               // Neutron rate in neutrons/sec
// Calculation 
p = IR/no;
printf('\n Probability of collision = %3.2E \n',p);

