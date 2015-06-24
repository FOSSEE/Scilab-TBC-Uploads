clc();
clear;
// To calculate the critical current
T=4.2;         //temp in kelvin
Tc=7.18;       //critical temp in kelvin
Hc_0=6.5*10^4;        //in amp/m
d=1;     //diameter in mm
d=d*10^-3;    //diameter in m
r=d/2;
Hc_T=Hc_0*(1-((T/Tc)^2));
Ic=2*%pi*r*Hc_T;
printf("the critical current is %f Amp",Ic);

//answer given in the book is wrong
