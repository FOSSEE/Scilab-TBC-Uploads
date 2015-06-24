//Exa 7.2
clc;
clear;
close;
//given data :
GP=12.5;//unitless
P_dB=23;//in dB
P=10^(P_dB/10);//unitless
G=GP*P;//unitless
GdB=GP+P_dB;//in dB
disp(GdB,"Gain of large antenna : ");
//Note : Answer in the book is wrong.