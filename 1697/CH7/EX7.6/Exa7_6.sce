//Exa 7.6
clc;
clear;
close;
//given data :
f=9;//in GHz
f=f*10^9;//in Hz
c=3*10^8;//in m/s
lambda=c/f;//in meters
r=35;//in cm
r=r*10^-2;//in meters
Attenuation=9.8;//in dB
//Formula : 10*log10(WT/Wr) = 9.8dB
WTbyWr=10^(Attenuation/10);//unitless
D=(4*%pi*r/lambda)*(sqrt(1/WTbyWr));//unitless
D_dB=10*log10(D);
disp(D_dB,"Gain of the horn in dB : ");