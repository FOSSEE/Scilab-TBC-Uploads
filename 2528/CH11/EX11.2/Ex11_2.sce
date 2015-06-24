// Chapter 11
// Design a second order high  pass Bessel's filter
// Page.No-404
// Example11_2
//Figure 11.25
// Given
clear;clc;
L=1.732;                // Aplha = DAMPING
Kf=1.274;
R1=L/2;
printf("\n The Resistor required is  = %.3f Ohm\n",R1); // Result
R2=2/L;
printf("\n The Resistor required is  = %.3f Ohm\n",R2); // Result
F3db=5000;              //in Hz
Fc=F3db/Kf;
printf("\n The critical frequency is = %.0f Hz\n",Fc); // Result
Wc=2*%pi*Fc;
printf("\n The Wc is = %.0f radians per seconds\n",Wc); // Result
R1n=R1/Wc;
printf("\n The value of scaled Resistor R1 is  = %.7f Ohm\n",R1n); // Result
R2n=R2/Wc;
printf("\n The value of scaled Resistor R2 is  = %.7f Ohm\n",R2n); // Result
