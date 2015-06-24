clear;
clc;
//Example 15.3
fC=10000;
f3dB=1000;
//x=C2/C1
x=2*%pi*f3dB/fC;
printf('\ncapacitances C2/C1=%.3f \n',x)
