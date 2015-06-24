// chapter 9
// example 9.10
// Find the electron and hole concentrations and the resistivity
// page 276
clear;
clc;
//given
rho=2300; // in ohm-m (resistivity of pure silicon)
ue=0.135; // in m^2/V-s (mobility of electron)
uh=0.048; // in m^2/V-s (mobility of electron)
Nd=1E19;// in /m^3 (doping concentration)
e=1.6E-19;// in C (charge of electron)
//calculate
// since sigma=ni*e*(ue+uh) and sigma=1/rho
// therefore ni=1/(rho*e*(ue+uh))
ni=1/(rho*e*(ue+uh)); // calculation of intrinsic concentration
ne=Nd; // calculation of electron concentration
printf('\nThe electron concentration is \tne=%1.1E /m^3',ne);
nh=ni^2/Nd; // calculation of hole concentration
printf('\nThe hole concentration is \tnh=%1.1E /m^3',nh);
sigma=ne*ue*e+nh*uh*e; // calculation of conductivity
rho=1/sigma; // calculation of resistivity
printf('\nThe resistivity of the specimen  is \t%.2f  ohm-m',rho);


