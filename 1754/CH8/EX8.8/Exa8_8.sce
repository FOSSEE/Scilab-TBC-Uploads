//Exa 8.8
clc;
clear;
close;
//Given data :
f=500;//in kHz
T1=50;//in degree C
T2=60;//in degree C
TC=-20;//in ppm/degree C
ChangeInFreq=TC*(f*10^-3)*(T1-T2);//in Hz
ResonantFreq=f*1000-ChangeInFreq;//in Hz
disp(ResonantFreq/1000,"Resonant frequency in kHz : ");
//Note : answer in the book is wrong.