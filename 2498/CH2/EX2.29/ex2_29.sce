// Exa 2.29
clc;
clear;
close;
format('v',6)
// Given data
Vin = 10;// in V
V1 = 2;// in V
// Vin -V_C - V1 = 0;
V_C =Vin-V1;// in V
// During positive half cycle the output voltage 
Vout = Vin-V_C;// in V
disp(Vout,"During positive half cycle the output voltage in V is : ")
Vin = -10;// in V
V1 = 8;// in V
// Vin-V1-Vout = 0;
// During negative half cycle the output voltage 
Vout = Vin-V1;// in V
disp(Vout,"During negative half cycle the output voltage in V is : ")

