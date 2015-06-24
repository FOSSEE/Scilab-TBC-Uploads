// Example 9.1
clear all;
clc;

// Given data
e = 1.6*10^(-19);                         // Electronic charge in couloumb(coul)
X = 1*10^(-3)/3600;                       // Exposure rate in terms of R/sec
// According to the definition of Roentgen, 1 R = 2.58*10^(-7) coul/g 
R = 2.58*10^(-7);
// From standard table
// There is 0.001293 g of air per 1 cm^3 at 1 atmospheric pressure at 0 C 
density_air = 0.001293;
// Calculation
IR = (X*R*density_air)/e;
// Result
printf(" \n Rate of ions produced from gamma ray interaction = %d ions/cm^3-sec",IR);
