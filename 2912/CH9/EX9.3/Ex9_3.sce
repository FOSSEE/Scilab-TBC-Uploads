// chapter 9
// example 9.3
// find the resistance of intrinsic germanium
// page 272-273
// given
clear;
clc;
ni=2.5E13; // in /cm^3 (intrinsic carrier density)
ue=3900; // in cm^2/(V-s) (electron mobilities)
uh=1900; // in cm^2/(V-s) (hole mobilities)
e=1.6E-19; // in C (charge of electron)
l=1; // in cm (lenght of the box)
b=1,h=1; // in mm (dimensions of germanium rod )
// calculate
ni=ni*1E6; // changing unit from 1/cm^3 to 1/m^3
ue=ue*1E-4; // changing unit from cm^2 to m^2
uh=uh*1E-4; // changing unit from cm^2 to m^2
sigma=ni*e*(ue+uh); // calculation of conductivity
rho=1/sigma; // calculation of resistivity
l=l*1E-2; // changing unit from mm to m for length
A=(b*1E-3)*(h*1E-3); // changing unit from mm to m for width and height and calculation of cross-sectional area
R=rho*l/A; // calculation of resistance
printf('\nThe resistance of intrinsic germanium is \tR=%1.1E ohm',R);

