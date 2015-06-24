// chapter 9
// example 9.4
// find the electrical conductivity and resistivity of germanium
// page 273
clear;
clc;
// given
ne=2.5E19; // in /m^3 (electron  density)
nh=2.5E19; // in /m^3 (hole density)
ue=0.36; // in m^2/(V-s) (electron mobilities)
uh=0.17; // in m^2/(V-s) (hole mobilities)
e=1.6E-19; // in C (charge of electron)
// calculate
// since ne=nh=ni,  therefore we have 
ni=nh;
sigma=ni*e*(ue+uh); // calculation of conductivity
printf('\nThe conductivity of germanium is  %.2f /ohm-m',sigma);
rho=1/sigma; // calculation of resistivity
printf('\nThe resistivity of germanium is  %.2f ohm-m',rho);
// Note:  In the question, the value of ni has been misprinted as 2.5E-19 /m^3 rather it should be 2.5E19 /m^3. I have used 2.5E19 /m^3


