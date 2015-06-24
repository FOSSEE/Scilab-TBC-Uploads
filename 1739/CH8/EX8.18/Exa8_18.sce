//Exa 8.18
clc;
clear;
close;
//Given data :
format('v',5);
RL=630;//in Ohm
B=50;//in MHz
B=B*10^6;//in Hz
Ip=10^-7;//in Ampere
T=18;//in degree C
T=T+273;//in kelvin
q=1.6*10^-19;//in coulamb
K=1.38*10^-23;//Boltzman Constant
SbyN=Ip^2/(2*q*B*Ip+4*K*T*B/RL);//unitless
SbyNdB=10*log10(SbyN);//in dB
disp(round(SbyNdB),"Maximum SNR in dB : ");