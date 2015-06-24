//Exa 3.7
clc;
clear;
close;
//given data
Io=2.5;//in uA
I=10;//in mA
Vt=26;//in mVolt
n=2;//for silicon
V=n*Vt*10^-3*log((I*10^-3)/(Io*10^-6))
disp(V,"Forward voltage in volts is ");