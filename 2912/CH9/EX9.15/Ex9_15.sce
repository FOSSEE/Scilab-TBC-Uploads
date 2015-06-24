// chapter 9
// example 9.15
// Find the electron and hole densities  and conductivity and the resistance
// page 278-279
clear;
clc;
//given
ue=0.39; // in m^2/V-s (mobility of electron)
n=5E13;//  number of donor atoms
ni=2.4E19; // in atoms/m^3 (intrinsic carrier density)
l=10; // in mm (length of rod)
a=1; // in mm (side of square cross-section)
e=1.6E-19;// in C (charge of electron)
//calculate
l=l*1E-3; // changing unit from mm to m
a=a*1E-3; // changing unit from mm to m
A=a^2; // calculation of cross-section area
Nd=n/(l*A); // calculation of donor concentration
ne=Nd; // calculation of electron density
nh=ni^2/Nd; // calculation of hole density
printf('\nThe electron density is \tne=%1.0E /m^3',ne);
printf('\nThe hole density is \tnh=%1.2E /m^3',nh);
// since sigma=ne*e*ue+nh*e*ue and since ne>>nh
// therefore sigma=ne*e*ue
sigma=ne*e*ue; // calculation of conductivity
printf('\nThe conductivity is \t%.f /ohm-m',sigma);
rho=1/sigma; // calculation of resistivity
R=rho*l/A; // calculation of resistance 
printf('\nThe resistance is \tR=%.f ohm',R);
