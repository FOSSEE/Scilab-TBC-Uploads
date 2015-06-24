// Exa 8.1
clc;
clear;
close;
format('v',8)
// Given data
Av1 = 60;// voltage gain of first stage
Av2 = 100;// voltage gain of second stage 
Av3 = 160;// voltage gain of third stage 
Av= Av1*Av2*Av3;// overall voltage gain 
Av_indB= 20*log10(Av);// overall voltage gain in dB
disp(Av_indB,"The overall voltage gain of the amplifier in dB is : ")
