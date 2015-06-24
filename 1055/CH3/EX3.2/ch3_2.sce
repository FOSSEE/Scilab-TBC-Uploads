//To determine the capacitance and charging current 
clear
clc;
GMDm=6.61;//mutual GMD(m)
Ds1=sqrt(1.25*(10^-2)*10.965);
Ds3=Ds1;
Ds2=sqrt(1.25*(10^-2)*9);
Ds=((Ds1*Ds2*Ds3)^.333333);
C=1/(18*log(GMDm/Ds));
Ic=220*1000*314*.01905*(10^-6)/sqrt(3);
mprintf("capacitance =%.6f micro-Farad/km\n",C);
mprintf("charging current =%.2f amp/km",Ic);
