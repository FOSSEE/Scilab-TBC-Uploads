// Exa 5.5
clc;
clear;
close;
// Given data
// For an 8-bit converter reference voltage V_REF be taken as 100 V
V_REF= 100;// in volt
f=75*10^6;// in Hz
// For setting
D7=1;
Vout1= V_REF*2^7/2^8;// in volt
disp(Vout1,"Output voltage in volt")
// since 180-100 = 80 > 50; set D7=1

// For setting
D6=1;
Vout2= V_REF*2^6/2^8;// in volt
disp(Vout2,"Output voltage in volt")
// Hence for setting D7=1 and D6=1 output voltage
Vout3= Vout1+Vout2;// in volt
disp(Vout3,"Output voltage in volt")
// since 80>75; set D6=1
// For setting D5=1, D6=1 and D7=1
Vout4   = V_REF*2^5/2^8 + Vout1+ Vout2;// in volt
disp(Vout4,"Output voltage in volt")
disp("All other digits will be set to zero or 1. Output will be accordingly indicated as a result of successive approximation. The Converted 8-bit digital form will be 1110010")
T=1/f;//in sec
disp(T*10^9,"Conversion time in ns")

