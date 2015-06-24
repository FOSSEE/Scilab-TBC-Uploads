//Example 11.4

clear;

clc;

a=2*10^5;

zo=75;

R1=39*10^3;

R2=24*10^3;

R3=3.3*10^3;

Vo=10;

VImin=12;

VImax=36;

b=R1/(R1+R2);

loadr=-zo/(1+(a*b));

PSRR=33333.333;

CMRRdB=90;

CMRR=10^(CMRRdB/20);

liner=(1+(R2/R1))*((1/PSRR)+(0.5/CMRR));

printf("Line Regulation=%.1f ppm/V",liner*10^5);

printf("\nLoad Regulation=%.2f ppm/mA",loadr*10^2);