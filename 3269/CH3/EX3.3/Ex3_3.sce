// Example 3.3
clear all;
clc;

// Given data
// Using the data given in the example 3.1
N = 0.08*10^(24);                   // Atom density of Carbon-12 in atoms/cm^3
// 1 barn = 10^(-24) cm^2
sigma = 2.6*10^(-24);               // Cross section of carbon-12 in cm^2
I = 5*10^8;                         // Intensity of neutron beam in neutrons/cm^2-sec

// 1.
// Calculation 
SIGMAt = N*sigma;
// Result
printf('\n Macroscopic cross section of carbon-12 = %3.2f cm^(-1)\n',SIGMAt);

//2. 
// Calculation 
 F= I*SIGMAt;
// Result
printf('\n Collision density in the carbon-12 target = %3.2E collisions/cm^(3)-sec\n',F);
