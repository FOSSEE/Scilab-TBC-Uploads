//Exa 5.10
clc;
clear;
close;
//Given data :
format('v',5);
A=1000;//gain(unitless)
Beta=1/20;//feedback ratio (unitless)
//Formula : Af=A/(1+A*Beta)
Af=A/(1+A*Beta);//gain with feedback(unitless)
Af=20*log10(Af);//in dB
disp(Af,"Gain with feedback in dB : ");