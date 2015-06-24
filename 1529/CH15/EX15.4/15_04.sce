//Chapter 15, Problem 4
clc;
f=50;                      //frequency in hertz
Xc=40;                      //capacitive reactance
C=1/(2*%pi*f*Xc);           //capacitance in farad
printf("Capacitance C = %.2f uF",C*10^6);
