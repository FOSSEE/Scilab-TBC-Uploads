// Chapter 11
// Design a low pass Butterworth filter
// Page.No-397
// Example11_1
//Figure 11.13 and 11.14
// Given
clear;clc;
L=1.414;            //Alpha
Ri=1;           //in Ohm
Rf=2-L;
printf("\n The value of Rf is = %.3f Ohm\n",Rf); // Result
Av=1+Rf/Ri;
printf("\n The pass band gain of  = %.3f \n",Av); // Result
fc=1000;            //in Hz
W=2*%pi*fc;
printf("\n The critical frequency is = %.0f radians per seconds\n",W); // Result
R=1/W;
printf("\n The Resistor required is  = %.6f Ohm\n",R); // Result
C1=2/L;
printf("\n The capacitor1 required is  = %.3f F\n",C1); // Result
C2=L/2;
printf("\n The capacitor2 required is  = %.3f F\n",C2); // Result
