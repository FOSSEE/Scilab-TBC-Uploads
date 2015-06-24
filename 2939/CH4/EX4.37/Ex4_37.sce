
//Ex4_37
clc;

// Given:
a=10*10^7;// rate
t=15;// h
// Soution:
A30=a*(1-(0.5)^(2));// dps

A45=A30*((0.5)^(3));// dps

printf("The residual activity in the sample is %f dps",A45)
