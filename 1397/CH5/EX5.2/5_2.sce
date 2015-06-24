//clc();
clear;
//To determine the value of critical field
H0=3.2*10^3;        //critical magnetic field in A/m
Tc=3.5;             //critical temperature in K
T=2.5;              //temperature in K
A=1-(T/Tc)^2;
Hc=H0*A;
printf("value of critical field is %f A/m",Hc);
