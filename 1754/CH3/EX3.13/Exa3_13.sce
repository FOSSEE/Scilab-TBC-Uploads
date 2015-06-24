//Exa 3.13
clc;
clear;
close;
//Given data : 
n=10;//turn ratio
RL=100;//in ohm
ICQ=100;//in mA
RLdash=n^2*RL;//in ohm
MaxPowerOut=(ICQ*10^-3)^2*RLdash/2;//in watt
disp(MaxPowerOut,"Maximum Power output in watt : ");