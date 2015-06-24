clc();
clear;
// To calculate the critical feild at 2.5K
Tc=3.5;         //in K
Ho=3.2*10^3;    //in amp per m
T=2.5;         //in K
Hc=Ho*(1-((T/Tc)^2));
printf("critical field is %f amp/m is",Hc);
