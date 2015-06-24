//Ex:4.16
clc;
clear;
close;
L=5;// length in km
a=0.5;// attenuaion loss in dB/km
Po=10^-3*10^(-(a*L)/10);// power level in mW
printf("The power level =%f mW", Po*10^3);