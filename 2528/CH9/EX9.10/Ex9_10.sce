// Chapter 9
// determine Output frequency
// Page.No-336
// Example9_10
//Figure 9.40
// Given
clear;clc;
R=10000;            //in Ohm
printf("\n Value of Assumed resistance is  = %.0f Ohm\n",R); // Result

Tout=100*10^-6;
C=Tout/(1.1*R);
printf("\n Value of Capacitance is  = %.11f F\n",C); // Result
printf("\n The nearst value would be 10nF");
