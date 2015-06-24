
//Exa:3.4
clc;
clear;
close;
//Given:
w=10;//in KHz
wm=2;//in KHz
mf=w/wm;
Bw=wm*8*2;//for 5 highest coefficient of J in Bessel function is 8
printf("\n modulation index = %f ",mf);
printf("\n Band width required = %f KHz",Bw);