//Example No. 14.6.2
clc;
clear;
close;
format('v',7);
f=150;//MHz(frequency)
c=3*10^8;//m/s(speed of light)
GT=1.64;//dB(Transmitter gain)
PT=20;//W(Transmitted power)
d=50;//km(distance)
lambda=c/(f*10^6);//m(Wavelength)
E=sqrt(30*GT*PT)/(d*1000);//V/m(emf induced)
le=lambda/%pi;//m(Effective length)
Voc=E*le;//V/m(Open circuit voltage)
disp(Voc*10^6,"Open circuit voltage in micro Volt : ");
