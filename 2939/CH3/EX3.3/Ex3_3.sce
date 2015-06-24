
// Ex3_3
clc;
// Given:
E=6;// in MeV
z1=79;
z2=2;
q=4.8*10^-10;
// Solution:

// At the closest distance of approach, the kineic energy of the alpha particle balances the columb barrier energy.

r1=(z1*z2*q*q)/(E*1.6*10^-6);// distance in cm
r=r1*10^13;// distance in fm

printf("The closest distance of approach is = %f fm",r)
