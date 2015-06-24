// Chapter6
// Page.No-228, Figure.No-6.21
// Example_6_14
// Change in output voltage
// Given
clear;clc;
Rf=3*10^3;
Vdc=5;
Rt=100*10^3; // Resistance at darkness
Vomin=-(Vdc/Rt)*Rf; // Min output voltage at darkness
printf("\n Min output voltage at darkness is = %.2f V \n",Vomin)
Rt=1.5*10^3; // Resistance at Illumination
Vomax=-(Vdc/Rt)*Rf; // Max output voltage at Illumination
printf("\n Max output voltage at Illumination is = %.f V \n",Vomax)