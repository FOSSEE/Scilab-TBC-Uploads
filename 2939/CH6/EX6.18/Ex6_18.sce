
// Ex6_18
clc;

// Given:
r0=1.37*10^-15;// nuclear radius constant in m
p=8.85*10^-12;// permittivity of free space in J^-1*C^2*m^-1
A=92;
e=1.6*10^-19;
mTe=140;
mZr=95;
// Solution:
r1=((mTe)^0.33333);
r2=((mZr)^0.33333);
Eb=(52*40)*(e^2)/(r0*(r1+r2)*4*3.14*p*1.6*10^-13);
printf("The fission barrier energy is = %f MeV",Eb)
