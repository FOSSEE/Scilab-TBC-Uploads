//Chapter 15, Problem 19
clc;
I=100e-6;
V=2e-3;                                 //supply voltage
f=200e3;                                 //frequency
L=50e-6;                                //inductance in henry
R=V/I;                                   //resistance in ohm
C=1/((2*%pi*f)^2*L);                     //capacitance in farad
printf("(a) Circuit resistance, R = %d ohm\n\n",R);
printf("(b) Circuit capacitance, C = %.1f nF\n\n",C*10^9);
