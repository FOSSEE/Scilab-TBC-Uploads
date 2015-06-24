// Exa 10.12
clc;
clear;
close;
// Given data
del_Vin = 5;// in V
FRR = 80;// in dB
// Formula FRR= 20*log10(del_Vin/del_Vout)
del_Vout=del_Vin/(10^(FRR/20));// in V
disp(del_Vout*10^3,"Change in output voltage in mV is : ")
