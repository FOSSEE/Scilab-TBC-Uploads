//Ex 5.12
clc;clear;close;
format('v',4);
tau=1;//ms
//R1/R2=1.8:9;given range
//Let R1/R2=1.8
R1BYR2=1.8;//ratio
Beta1=1/(R1BYR2+1);
R1BYR2=9;//ratio
Beta2=1/(R1BYR2+1);//unitless
Beta=Beta1:Beta2;//Range of Beta
//For fmin
Tmax=2*log((1+Beta1)/(1-Beta1));//ms
fmin=1000/Tmax;//Hz
//For fmax
Tmin=2*log((1+Beta2)/(1-Beta2));//ms
fmax=1/Tmin;//kHz
disp("Frequency range is "+string(fmin)+" Hz to "+string(fmax)+" kHz");
