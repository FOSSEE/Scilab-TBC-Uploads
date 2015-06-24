// Chapter6
// Page.No-216, Figure.No-6.14(a)
// Example_6_9
// Gain of the amplifier
// Given
clear;clc;
Vo=3.7;Vin=100*10^-3;
R1=100; // Assume
Rf=0.5*((Vo*R1)/Vin-1); // Feedback resisrance
printf("\n Feedback resisrance is = %.1f ohm \n",Rf)
A=(1+2*Rf/R1); // Gain of the differential amplifier
printf("\n Gain of the differential amplifier is = %.1f \n",A)