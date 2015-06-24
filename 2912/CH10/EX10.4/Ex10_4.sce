//  chapter 10
// example 10.4
// calculate transition temperature
// page 314
// given
clear;
clc;
T=6; // in K (given temperature)
Hc=5E3; // in A/m (critical magnetic field at 5K)
H0=2E4; // in A/m (critical magnetic field at 0K)
//calculate
// since Hc=H0*(1-(T/Tc)^2)
// therefor we have Tc=T/sqrt(1-(Hc/H)^2)
Tc=T/sqrt(1-(Hc/H0)); // calculation of transition temperature
printf('\nThe transition temperature is \tTc=%.3f K',Tc);
// Note: answer in the book is wrong due to calculation mistake
