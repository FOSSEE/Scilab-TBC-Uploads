//Caption: information rate
//Example 9.13
//page no 401
//Find information rate the telegraphic source
clc;
clear;
pdash=1/3;
pdot=2/3;
tdot=0.2;
tdash=0.6;
tspace=0.2;
HX=-pdash*log2(pdash)-pdot*log2(pdot);
Ts=pdot*tdot+pdash*tdash+tspace;
r=1/Ts;
R=r*HX;
printf("Average rate of information\n \n \t R = %.2f b/s",R);
