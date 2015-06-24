//To determine the capacitance and charging current 
clear
clc;
GMD=8.19;
Ds=sqrt(2.25*(10^-2)*.4);
C=1/(18*log(GMD/Ds));
Ic=220*1000*314*C*(10^-6)/sqrt(3);
mprintf("capacitance per km =%.5f micro-Farad\n",C);
mprintf("charging current =%.3f amp",Ic);
