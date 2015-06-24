clc();
clear;
// To calculate the critical current
Hc=2*10^3;       //critical magnetic field in amp/m
R=0.02;       //radius in m
p=3.14;
Ic=2*p*R*Hc;
printf("the critical current is %f amp",Ic);
