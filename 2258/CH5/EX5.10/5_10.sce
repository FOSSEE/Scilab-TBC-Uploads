clc();
clear;
// To calculate the critical current
d=3;     //diameter in mm
d=d*10^-3;     //diameter in m
Tc=8;        //critical temp in K 
T=5;       //temp in K 
Ho=5*10^4;    //magnetic field in A/m
r=d/2;
Hc=Ho*(1-((T/Tc)^2));
Ic=2*%pi*r*Hc;
printf("critical current is %f amp",Ic);

//answer in the book is wrong
