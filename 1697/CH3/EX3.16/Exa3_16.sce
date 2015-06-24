//Exa 3.16
clc;
clear;
close;
//given data
Fn_dB=1.1;//in dB
Fn=10^(Fn_dB/10);//unitless
To=290;//in Kelvin
Te=To*(Fn-1);//in Kelvin
disp(Te,"Effective Noise Temperature in Kelvin : ");
