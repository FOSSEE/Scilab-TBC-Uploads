//clc();
clear;
//To determine critical current for a wire
d=3*10^-3;        //diameter of wire in m
r=d/2;
Tc=8;          //critical temperature in K
H0=5*10^4;      //magnetic field in A/m
T=5;              //temperature in K
A=1-(T/Tc)^2;
Hc=H0*A;
printf("magnitude is %f A/m",Hc);
Ic=2*%pi*r*Hc;
printf("critical current is %f Amp",Ic);
