// Chapter6
// Page.No-222, Figure.No-6.20
// Example_6_13
// Range of output voltage
// Given
clear;clc;
R1=1*10^3;Rf=2.7*10^3;
Vref=2;
Io=0; // Since all the binary inputs D0 to D7 are logic zero
Vo_min=Io*Rf; // Minimum output voltage
printf("\n Minimum output voltage is = %.f V \n",Vo_min)
Io=(Vref/R1)*(1/2+1/4+1/8+1/16+1/32+1/64+1/128+1/256);
Vo_max=Io*Rf; // Maximum output voltage
printf("\n Maximum output voltage is = %.2f V \n",Vo_max)