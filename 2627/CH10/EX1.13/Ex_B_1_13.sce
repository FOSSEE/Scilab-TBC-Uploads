//Part B Ex 1.13
clc;clear;close;
format('v',5);
format('v',5);
Vs=2.5;//V
Vn=10;//mV
SNratio=20*log10(Vs/(Vn/1000));//dB
disp(SNratio,"S/N ratio(dB)");
