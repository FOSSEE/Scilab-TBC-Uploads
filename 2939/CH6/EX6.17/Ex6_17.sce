
// Ex6_17
clc;
// Given:
r0=1.4*10^-15;// nuclear radius constant in m
p=8.85*10^-12;// permittivity of free space in J^-1*C^2*m^-1
A=92;
e=1.6*10^-19;
mPd=118;
// Solution:
r=((mPd)^0.33333);
Eb=((A/2)^2)*(e^2)/(2*r0*r*4*3.14*p*1.6*10^-13);
printf("The fission barrier energy is = %f MeV",Eb)
