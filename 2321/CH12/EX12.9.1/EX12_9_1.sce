//Example No. 12.9.1
clc;
clear;
close;
format('v',6);
D=2;//m(Diameter)
f=6000;//MHz(Frequency)
c=3*10^8;//m/s////speed of light
lambda=c/(f*10^6);//m(Wavelength)
FNBW=140*lambda/D;//degree
disp(FNBW,"First null beam width(FNBW in degree) : ");
GP=6*(D/lambda)^2;//unitless(Power gain)
GP_dB=10*log10(GP);//dB(Power gain)
disp(GP_dB,"Power Gain in dB : ");
//Ans in the book is not accurate.
