// Exa 3.1
clc;
clear;
close;
format('v',6)
// Given data
I1 = 30;// in mA
I2 = 20;// in mA
delI_Z = I1-I2;// in mA
delI_Z = delI_Z * 10^-3;// in A
V1 = 5.75;// in V
V2 = 5.6;// in V
delV_Z = V1-V2;// in V
// The resistance of the device 
r_Z = delV_Z/delI_Z;// in ohm
disp(r_Z,"The resistance of the device in ohm is");
