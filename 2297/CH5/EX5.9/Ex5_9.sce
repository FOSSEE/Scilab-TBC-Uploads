// Example 5.9;resolution
clc;
clear;
format('v',6)
// given :
fsr=9.999;//full scale reading in volts
d=9999;//number of divisions
R=(1/d)*fsr*10^3;//resolution
disp(R,"resolution is ,(mV)=")
