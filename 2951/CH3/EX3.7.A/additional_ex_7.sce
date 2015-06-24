clc;
clear;
Fc=10;//carrier Frequency in kHz
R=15;//Resistance in Kohms
C=660;//Capacitance in pF
a=1/R;
b=2*%pi*Fc*10^(3)*C*10^(-12);
Y=a+%i*b;
Z=1/abs(Y);
//after rounding off
Z=12.83//Impedence in Kohms
m=Z/(R);//modulation index
disp(m,"MAximum modulation index to avoid diagonal clipping is");
