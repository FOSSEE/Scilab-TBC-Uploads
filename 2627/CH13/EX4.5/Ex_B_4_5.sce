//Ex 4.5
clc;clear;close;
format('v',3);
RF=200;//kHz
IF=10;//kHz
BI=RF/IF;//unitless(Bandwidth Improvement)
NF=10*log10(BI);//dB
disp(NF,"Noise Figure improvement(dB)");
