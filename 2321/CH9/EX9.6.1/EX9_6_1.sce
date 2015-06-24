//Example No. 9.6.1
clc;
clear;
close;
format('v',7);
f=2;//GHz(Frequency)
G=12;//dBi(Gain)
D=12;//dBi(Gain)
D=10^(D/10);//unitless(Directivity)
c=3*10^8;//m/s(speed of light)
lambda=c/(f*10^9);//m(wavelength)
Ap=D*lambda^2/7.5;//m²(capture area)
disp(Ap,"Required capture area in m²  : ");
