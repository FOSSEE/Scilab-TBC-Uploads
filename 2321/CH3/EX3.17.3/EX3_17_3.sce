//Example No. 3.17.3
clc;
clear;
close;
format('v',9);
f=3;//GHz
c=3*10^8;//m/s(Speed of light)
lambda=c/(f*10^9);//m(wavelength)
r=500;//m(distance)
PT=100;//W(Transmitted Power)
GT=25;//dB(Transmitter Gain)
GR=20;//dB(Reciever Gain)
GT=10^(GT/10);//unitless(Transmitter Gain)
GR=10^(GR/10);//unitless(Reciever Gain)
PLF=1;aT_aR=1;//(For polarization match)
PR=PT*(lambda/4/%pi/r)^2*GT*GR*aT_aR^2;//Watts(Power delivered to reciever)
disp(PR,"Power delivered to load  in Watts : ");
