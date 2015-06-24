//Example 3.9.1// multiplier
clc;
clear;
close;
//given data :
Vin=20;//in volts
I_fsd=50*10^-6;//in Farad
Rm=200;// in ohm
Rs=(Vin/I_fsd)-Rm;
disp(Rs*10^-3,"the multiplier,Rs(k-ohm) = ")
