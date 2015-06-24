//Example No. 12.9.3
clc;
clear;
close;
format('v',6);
D=6;//meter(Diameter)
f=10;//GHz(Frequency)
c=3*10^8;//m/s////speed of light
lambda=c/(f*10^9);//m(Wavelength)
GP=6*(D/lambda)^2;//unitless(Power gain)
GP_dB=10*log10(GP);//dB(Power gain)
disp(GP_dB,"Gain in dB : ");
FNBW=140*lambda/D;//degree(FNBW)
disp(FNBW,"FNBW in degree : ");
HPBW=58*lambda/D;//degree(HPBW)
disp(HPBW,"HPBW in degree : ");
K=0.65;//constant
Ao=K*%pi/4*D^2;//m²(Capture area)
disp(Ao,"Capture area in m² : ");
