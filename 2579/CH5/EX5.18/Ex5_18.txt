//Ex:5.18
clc;
clear;
close;
f=900*1000;// frequency in Hz
c=10^-4;// conductivity in mhos/cm
p=10;// power in kw
d=100*1000;// distance in m
d1=100;// distance in km
Er=20;// relative dielectric constant
y=3*10^8/f;// wavelength in m
w=2*%pi*f;
Eo=(10^-9)/(36*%pi);
x=c/(w*Eo);
b=(atan((Er+1)/x))*180/3.14;// in degree
P=(%pi*d*cos(b*%pi/180))/(x*y);
A1=(2+0.3*P)/(2+P+0.6*P^2);
// tower efficiency is 80% so effective power is 10/.80=12.5kW=Pef
Pef=12.5;// effective power in kW
Eg=(1.1*300*A1*sqrt(Pef))/d1;// strength of ground wave in mV/meter
printf("The strength of ground wave= %f mV/meter", Eg);