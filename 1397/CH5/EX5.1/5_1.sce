//clc();
clear;
//To determine magnitude of critical magnitutic field
Tc=7.2;          //critical temperature in K
H0=6.5*10^3;      //critical magnetic field in A/m
T=5;              //temperature in K
A=1-(T/Tc)^2;
Hc=H0*A;
printf("magnitude is %f A/m",Hc);
