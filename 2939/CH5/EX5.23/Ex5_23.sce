
// Ex5_23
clc;

// Given:
f=8.6*10^6;// in Hz
q1=1.6*10^-19;
q2=6*1.6*10^-19;
m1=1.66*10^-27;
m2=14*1.66*10^-27;
// Solution:
// for proton
B1=2*3.14*f*m1/q1;

printf("\n The magnetic field needed to accelerate protons is = %f T",B1)
// for N(14) ions
B2=2*3.14*f*m2/q2;

printf("\n The magnetic field needed to accelerate N(14) ions is = %f T",B2)

