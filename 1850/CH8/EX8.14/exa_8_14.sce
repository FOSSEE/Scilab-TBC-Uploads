// Exa 8.14
clc;
clear;
close;
//given data
f=75;// in MHz
f=f*10^6;// in Hz
// For an 8-bit converter reference voltage
V_REF= 100;// in volt
// For setting D7=1
Vo_7= V_REF*2^7/2^8;//in volt
// For setting D6=1
Vo_6= V_REF*2^6/2^8;//in volt
// For setting D7=1 and D6=1
Vo_76= Vo_7+Vo_6;//in volt
// For setting D5=1 D6=1 and D7=1
Vo_5= V_REF*2^5/2^8+Vo_7+Vo_6;//in volt
disp(Vo_7,"For setting D7=1 output voltage in volt is :")
disp(Vo_6,"For setting D6=1 output voltage in volt is :")
disp(Vo_76,"For setting D7=1 and D6=1 output voltage in volt is :")
disp(Vo_5,"For setting D5=1, D6=1 and D7=1 output voltage in volt is :")
disp("All other digits will be set to zero or 1. Output will be accordingly indicated as a resul of successive approximation. The converted 8-bit digital form will be 1110010")
T=1/f;// in sec
disp(T*10^9,"Conversion time in ns")

