// chapter 9
// example 9.16
// Find the mobility and density
// page 279
clear;
clc;
//given
RH=3.66E-4; // in m^3/C (Hall coefficient)
rho=8.93E-3; // in ohm-m (resistivity)
e=1.6E-19; // in C (charge of electron)
// calculate
u=RH/rho; // calculation of mobility
n=1/(RH*e); // calculation of density
printf('\nThe mobility is \tu=%.4f m^2/(V-s)',u);
printf('\nThe density is \tn=%1.1E /m^3',n);
