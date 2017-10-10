clear;
clc;
printf("\nEx7.2\n");
//page no.-218
//given
t=10^-3;........//thickness of copper strip in m
e=1.6*10^-19;....//charge in C
n=8.4*10^28;.....//no. of charge carriers in per m^3
I=200;...........//current in A
B=1.5;...........//magnetic field in weber/m^2

V=(I*B)/(n*e*t)......//potential difference in volt
//to convert in micro volt multiply by 10^6

printf("\npotential difference is 22 micro volt\n");
