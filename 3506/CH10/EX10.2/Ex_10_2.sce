//Optical Fiber communication by A selvarajan
//example 10.2
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
PB=40//power budget in dB
x=-30//crosstalk in dB assumed
N=4//no. of switches 
Lin=1//insertion loss of in dB
Linw=Lin*N//worst case insertion loss of in dB
Lc=2//worst case connector loss in dB
L=Linw+2*Lc//total power lost in the worst case signal path in dB
Power_margin=PB-L//power margin in dB
K=0;
for i=1:N
K=K+(((-1)^(i+1))*(10^(-x/10))^i);
end
SbyN=10*log10(K)//Signal power to noise power in dB
mprintf('Signal power to noise power =%fdB',SbyN)
mprintf('\nPower Margin =%fdB',Power_margin)//The Textbook answer is wrong
