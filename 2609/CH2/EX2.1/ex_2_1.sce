//Ex 2.1
clc;
clear;
close;
format('v',5);
v1=7;//mV
v2=9;//mV
Ad=80;//dB
CMRR=90;//dB
vid=v2-v1;//mV
vcm=(v1+v2)/2;//mV
Ad=10^(Ad/20);//unitless
CMRR=10^(CMRR/20);//unitless
vout=Ad*(vid+vcm/CMRR)/1000;//V
disp(vout,"Output Voltage(V)");;
