// Ex7_4

clc;

// Given:
P=10*10^6; // power in watts
E=200*10^6; // in eV

// Solution:
e=E*1.6*10^-19;// in joules
// Thus for 1 fission occurs per second, rate of power generation is e
n=(P)/e;// no. of fissions
printf("The no. of fissions per second are = %f",n)
