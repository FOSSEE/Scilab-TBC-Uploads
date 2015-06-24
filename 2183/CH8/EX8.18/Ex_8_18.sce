//Example 8.18 // Optimum receiver bandwidth and peak to peak signal power to noise ratio
clc;
clear;
close;
//given data :
Tr=12*10^-9;// in sec
f0=20*10^6;// in Hz
fD=5*10^6;// in Hz
Mr=80;// multiplication factor
Pp=.75*10^-7;
B=5*10^6;// in Hz
i2N=10^-17;// in A^2
fr=(1/Tr)*10^-6;
disp(fr," Optimum receiver bandwidth,fr(MHz) = ")
T0=1/f0;
SbyN=10*log10((3*(T0*fD*Mr*Pp)^2)/((2*%pi*Tr*B)^2*i2N));
disp(SbyN,"signal power to noise ratio,(dB) = ")
