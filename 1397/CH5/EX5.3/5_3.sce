//clc();
clear;
//To determine transition temperature
Hc=5*10^3;         //critical magnetic field in A/m
H0=2*10^4;      //critical field in A/m
T=6;              //temperature in K
A=sqrt(1-(Hc/H0));
Tc=T/A;
printf("transition temperature is %f K",Tc);
