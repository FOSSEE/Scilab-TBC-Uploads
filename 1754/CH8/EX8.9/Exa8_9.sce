//Exa 8.9
clc;
clear;
close;
//Given data :
f=450;//in kHz
T1=30;//in degree C
T2=50;//in degree C
TC=-10;//in ppm/degree C
PercentChange=-TC*100/10^6;//in %
TotalChangeInFreq=(PercentChange/100)*(f*10^3)*(T2-T1);//in Hz
ResonantFreq=f*1000-TotalChangeInFreq;//in Hz
disp(ResonantFreq/1000,"Resonant frequency in kHz : ");
//Note : answer in the book is wrong.