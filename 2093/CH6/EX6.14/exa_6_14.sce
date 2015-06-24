// Exa 6.14
clc;
clear;
close;
// Given data
L1= 2;// in mH
L1= L1*10^-3;// in H
L2= 1.5;// in mH
L2= L2*10^-3;// in H
// Formula f= 1/(2*%pi*sqrt((L1+L2)*C)
// For f= 1000 kHz, C will be maximum
f=1000;// in kHz
f=f*10^3;// in Hz
Cmax= 1/((2*%pi*f)^2*(L1+L2));// in F
// For f= 2000 kHz, C will be maximum
f=2000;// in kHz
f=f*10^3;// in Hz
Cmin= 1/((2*%pi*f)^2*(L1+L2));// in F
disp(Cmin*10^12,"Minimum Capacitance in pF is : ")
disp(Cmax*10^12,"Maximum Capacitance in pF is : ")
