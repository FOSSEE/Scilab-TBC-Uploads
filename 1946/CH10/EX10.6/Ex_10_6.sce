// Example 10.6;//maximum bandwidth
clc;
clear;
close;
Ip=87.1*10^-9;//Photo current in ampere
its=1.44*10^-19;
it=2.02*10^-17;
Fn=2;//noise figure
SN=(Ip^2)/(its+(it*Fn));//Signal to noise ratio
SNdb=10*(log10(SN));//SIGNAL TO NOISE RATIO IN dB
disp(SNdb,"signal to noise raion in dB")
