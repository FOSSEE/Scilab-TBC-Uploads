//Example No. 3.11.2
clc;
clear;
close;
format('v',7);
Rr=72;//Ω
RL=8;//Ω
G=16;//Gain
K=Rr/(Rr+RL)*100;//%//radiation efficiency
D=G/(K/100);//Directivity
DdB=10*log10(D);//dB
disp(DdB,"Directivity in dB : ");
