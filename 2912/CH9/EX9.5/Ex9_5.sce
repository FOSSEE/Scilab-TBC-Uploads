// chapter 9
// example 9.5
// find the equilibrium hole concentration and conductivity
// page 273-274
clear;
clc;
// given
ni=1.5E16; // in /m^3 (intrinsic carrier density)
ue=0.135; // in m^2/(V-s) (electron mobilities)
uh=0.048; // in m^2/(V-s) (hole mobilities)
e=1.6E-19; // in C (charge of electron)
ND=1E23; // in atom/m^3 (doping concentration)
// calculate
sigma_i=ni*e*(ue+uh); // calculation of intrinsic conductivity
printf('\nThe intrinsic conductivity for silicon is  %1.2E S',sigma_i);
sigma=ND*ue*e; // calculation of conductivity after doping
printf('\n\nThe conductivity after doping with phosphorus atoms is  %1.2E S',sigma);
rho=ni^2/ND; // calculation of equilibrium hole concentration
printf('\n\nThe equilibrium hole concentration is  %1.2E /m^3',rho);
