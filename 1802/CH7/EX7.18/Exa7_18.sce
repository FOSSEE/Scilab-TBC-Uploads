//Exa 7.18
clc;
clear;
close;
//Given data : 
format('v',7);
VB=400;//in volt
ZAC=0.04+%i*0.08;//in ohm
ZCB=0.08+%i*0.12;//in ohm
I1=60*(0.8-%i*0.6);
I2=120*(0.8-%i*0.6);
VCB=I2*ZCB;//in Volt
VAC=(I1+I2)*ZAC;//in volt
VC=VB+I2*ZCB;//in Volt
disp(VC,"Voltage at C(in Volt) :");
VA=VC+(I1+I2)*ZAC;//in volt
disp(VA,"Voltage at A(in Volt) :");