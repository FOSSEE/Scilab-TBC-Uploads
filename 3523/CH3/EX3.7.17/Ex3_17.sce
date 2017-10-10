//Example 17// Ch 3
clc;
clear;
close;
// given data
E = 5; //electric field in V/m
n_o = 10^11; //ion density in ions/m3
T = 293; // in kelvin
z = 0.02; //distance in meters
e = 1.6*10^-19; //in couloumb
k = 1.38*10^-23; // in m2 kg s-2 K-1
n1 = n_o*exp((-e*E*z)/(k*T));//ion density 0.02m away
n2 = n_o*exp((e*E*z)/(k*T));//ion density -0.02m away
printf("ion density 0.02m away %e ions/m^3 \n",n1)
printf("ion density -0.02m away %e ions/m^3 \n",n2)
