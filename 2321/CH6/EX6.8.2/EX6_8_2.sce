//Example No. 6.8.2
clc;
clear;
close;
format('v',6);
n=16;//no. of point source
//d=lambda/4;(spacing)
dBYlambda=1/4;//(Spacing/wavelength)
HPBW=2*acosd(1-1.391/n/%pi/dBYlambda);//degree(HPBW)
disp(HPBW,"HPBW in degree :  ");
