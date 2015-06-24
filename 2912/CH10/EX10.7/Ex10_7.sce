//  chapter 10
// example 10.7
// calculate transition temperature of the isotopes
// page 315
clear;
clc;// given
M1=200.59; // in amu (average atomic mass  at 4.153K)
Tc1=4.153; // in K (first critical temperature)
M2=204; // in amu (average atomic mass of isotopes)
//calculate
// since Tc=C*(1/sqrt(M)
// therefore T1*sqrt(M1)=T2*sqrt(M2)
// therefore we have Tc2=Tc1*sqrt(M1/M2)
Tc2=Tc1*sqrt(M1/M2); //calculation of transition temperature of the isotopes
printf('\nThe transition temperature of the isotopes is \t Tc2=%.3f K',Tc2);

