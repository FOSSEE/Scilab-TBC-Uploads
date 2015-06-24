//Chapter 12
//page no 442
//given
clc;
clear all;
fb=2.5;            //in Gb/s
Lmax=50;           //in km
dL=0.4;     //in nm
D=1/fb/10^9/dL/10^-9/Lmax/10^-12*10^-9;
printf("\n Maximum allowable dispersion,D = %0.0f ps/nm-km",D);
