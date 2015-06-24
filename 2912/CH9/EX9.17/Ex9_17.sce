// chapter 9
// example 9.17
// Find the mobility and density of charge carrier
// page 279-280
clear;
clc;
//given
RH=3.66E-4; // in m^3/C (Hall coefficient)
rho=8.93E-3; // in ohm-m (resistivity)
e=1.6E-19; // in C (charge of electron)
// calculate
nh=1/(RH*e); // calculation of density of charge carrier
uh=1/(rho*nh*e); // calculation of mobility of charge carrier
printf('\nThe density of charge carrier is \tnh=%1.4E /m^3',nh);
printf('\nThe mobility of charge carrier is \tuh=%.3f m^2/(V-s)',uh);
