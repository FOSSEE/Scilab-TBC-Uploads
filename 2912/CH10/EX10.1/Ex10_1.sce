//chapter 10
//example 10.1
//Calculate magnitude of critical magnetic field
//page 313
clear;
clc;
//given
Tc=7.2; // in K (critical temperature)
T=5; // in K (given temperature)
H0=6.5E3; // in A/m (critical magnetic field at 0K)
//calculate
Hc=H0*(1-(T/Tc)^2); // calculation of magnitude of critical magnetic field
printf('\nThe magnitude of critical magnetic field is \tHc=%1.3E A/m',Hc);
