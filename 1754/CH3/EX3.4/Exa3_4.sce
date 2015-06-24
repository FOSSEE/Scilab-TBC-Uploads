//Exa 3.4
clc;
clear;
close;
//Given data : 
A1=100;//unitless
A2=200;//unitless
A3=400;//unitless
A1=20*log10(A1);//in dB
A2=20*log10(A2);//in dB
A3=20*log10(A3);//in dB
NetVoltageGain=A1+A2+A3;//in dB
disp(NetVoltageGain,"Net Voltage Gain in decibels :");
//Note : Answer in the book is wrong.