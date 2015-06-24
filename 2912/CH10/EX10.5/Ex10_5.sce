//  chapter 10
// example 10.5
// calculate  critical current at 5K
// page 314
// given
clear;
clc;
T=5; // in K (given temperature)
d=3; // in mm (diameter of the wire)
Tc=8; // in K (critical temperature for Pb)
H0=5E4; // in A/m (critical magnetic field at 0K)
pi=3.14; // value of pi used in the solution
//calculate
 Hc=H0*(1-(T/Tc)^2); // calculation of critical magnetic field at 5K
printf('\nThe critical magnetic field at 5K is \tHc=%1.3E A/m',Hc);
r=(d*1E-3)/2; // calculation of radius in m
Ic=2*pi*r*Hc; // calculation of critical current at 5K
printf('\nThe critical current at 5K is \tIc=%.4f A',Ic);
//Note: there is slight variation in the answer due to round off
