
// Ex3_12

clc;

// Given:
C=0.3;// in MeV^-1
a=2.0;// in MeV
E=8; // in MeV

// Solution:
d=C*(exp(2*((2*8)^(0.5))));// excited level density
s=(1/d)*1000;// level spacing
nT=(E/a)^(0.5);// nuclear temperature
printf("\n The excited level density is = %f MeV",d)
printf("\n The level spacing is = %f keV",s)
printf("\n The nuclear temperature is = %f MeV",nT)
