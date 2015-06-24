//clc();
clear;
//To determine the maximum critical temperature
Tc=8.7;         //first critical temperature in K
Hc=6*10^5;        //critical magnetic field in A/m at Tc 
H0=3*10^6;        //critical magnetic field in A/m at 0K
A=1-(Hc/H0);
T=Tc*sqrt(A);
printf("maximum critical temperature is %f K",T);
 
