//  chapter 10
// example 10.3
// calculate isotropic mass at 5.1K
// page 313
clear;
clc;
// given
M1=199.5; // in amu (isotropic mass at 5K)
T1=5; // in K (first critical temperature)
T2=5.1; // in K (second critical temperature)
//calculate
// since Tc=C*(1/sqrt(M)
// therefore T1*sqrt(M1)=T2*sqrt(M2)
// therefore we have M2=(T1/T2)^2*M1
M2=(T1/T2)^2*M1; //calculation of isotropic mass at 5.1K
printf('\nThe isotropic mass at 5.1K is \t M2=%.3f a.m.u.',M2);

