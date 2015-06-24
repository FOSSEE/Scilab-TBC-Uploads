clear;
clc;

// Illustration 1.1
// Page: 17

printf('Illustration 1.1 - Page: 17\n\n');

// solution

// Taking conversion factor from table 1.5 (Pg 15)
// viscosity: [(lb/ft.h)]*4.134*10^(-4) [kg/m.s] (Pg 15)
// time: [h] = 3600 [s]
// Density: [lb/cubic feet]*16.09 = [kg/cubic m] (Pg 15)
// Length: [ft]*0.3048 = [m]
N = (2.778*10^(-4))*(30600/(1/(0.3048^(3/2))))*((1/(4.134*(10^(-4))*16.019))^0.111)*(((1/16.019)/(1/16.019))^0.26);
printf('The coeffecient for S.I. Unit is %f',N);