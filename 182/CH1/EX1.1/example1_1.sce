
// Example 1-1 in page 8
// Given data
clc;
phi=500*10^-8;// one maxwell=10^-8 Wb, phi=total flux
Area=(2.54*10^-2)^2;// area in m^2, cross section is one inch and 1inch=2.54cm
// Calculation
B=phi/Area; //flux density(B) in tesla
printf("total flux density=%.2f mT",B*1000);
// Result
// the toatal flux density is 7.75 mT