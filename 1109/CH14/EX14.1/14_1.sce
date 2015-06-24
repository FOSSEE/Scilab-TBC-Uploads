clear;
clc;
Rk=600;fc=3000;
L=Rk/(%pi*fc);
printf("-Desired value of inductor L = %f mH\n",round(L*(10^3)*10)/10);
C=1/(%pi*Rk*fc);
printf("-Desired value of capacitor C = %f microfarads",round(C*(10^6)*10^4)/10^4);
