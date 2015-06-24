//1.26
clc;
Vm=230*2^0.5;
L=0.2*10^-3;
//a=dv/dt
a=25*10^6;
sig=0.65;
C=(1/(2*L))*(0.564*Vm/a)^2*10^9;
R=2*sig*(L/(C*10^-9))^0.5;
printf("The value of capacitor= %.2f nF",C)
printf("\nThe value of Resistor= %.1f Ohm",R)
