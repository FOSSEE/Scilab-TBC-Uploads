//Ex 6.16
clc;
clear;
close;
format('v',4);
//Data given
tau=1;//ms(time period)
R1byR2=1.8:0.2:9;//range of R1/R2
Beta_min=1/(1+min(R1byR2));//minimum value of Beta
Beta_max=1/(1+max(R1byR2));//maximum value of Beta
Tmax=2*tau*log((1+Beta_min)/(1-Beta_min));//ms////For minimum value of Beta
fmin=1/(Tmax*10^-3);//Hz
Tmin=2*tau*log((1+Beta_max)/(1-Beta_max));//ms////For maximum value of Beta
fmax=1/(Tmin*10^-3)/1000;//kHz
disp("Frequency range is "+string(fmin)+" Hz to "+string(fmax)+" kHz.");
