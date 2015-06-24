// Exa 2.18
clc;
clear;
close;
// Given data
epsilon_r= 1.5/100;
V=100;// in volt
I=150;// in mA
del_V= epsilon_r*V;// in volt
Vm= 70;// magnitude of voltage being measured in volt
PerLimError_V= del_V/Vm*100;// in %
del_I= epsilon_r*I;// in mA
Im= 80;//in mA
PerLimError_C= del_I/Im*100;// in %
P= Vm*Im/1000;// in watt
RelLImError_P= (PerLimError_V+PerLimError_C);// in %
disp(RelLImError_P,"Relative limiting error in power measurement in percentage") 
