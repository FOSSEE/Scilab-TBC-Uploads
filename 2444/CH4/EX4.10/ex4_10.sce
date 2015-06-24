// Exa 4.10
clc;
clear;
close;
format('v',8)
// Given data
V1 = 10;// in V
V2 = 5;// in V
I1 = 5.8;// in mA
I2 = 5;// in mA
delV_C = V1-V2;// in V
delI_C = I1-I2;// in mA
r_out = delV_C/delI_C;// in k ohm
disp(r_out,"The dynamic output resistance in k ohm is");
