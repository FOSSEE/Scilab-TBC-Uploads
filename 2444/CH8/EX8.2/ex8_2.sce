// Exa 8.2
clc;
clear;
close;
format('v',6)
// Given data
Av = 80;// overall voltage gain in dB
Av2 = 20*log10(150);// voltage gain of second stage in dB
Av1= Av-Av2;//voltage gain of first stage in dB
disp(Av1,"The voltage gain of first stage in dB is");
