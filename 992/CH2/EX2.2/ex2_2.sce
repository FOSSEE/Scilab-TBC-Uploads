
//Exa:2.2
clc;
clear;
close;
//Given:
L=50*10^-6;//henry
C=10^-9;//in farads
f=1/(2*%pi*sqrt(L*C));
printf("\n\n\t total power of modulated signal = %f Hz ",f);