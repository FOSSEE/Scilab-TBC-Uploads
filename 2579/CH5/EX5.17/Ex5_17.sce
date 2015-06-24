//Ex:5.17
clc;
clear;
close;
f=1690*1000;// frequency in Hz
d=16*1000;// distance in m
E=15;// dielectric constant
k=5*10^-5;// conductivity in ohms/cm
Eg=0.5*10^-3;// V/m
c=3*10^8;// the speed of ligth in m/s
y=c/f;// wavelength in m
// tan(b)=(E+1)/x=(E+1)/(1.8*10^12*k/f=f*(E+1))/(1.8*10^12*k)
// then b=atan(f*(E+1))/(1.8*10^12*k))
x=1.8*10^12*k/f;
b=(atan((f*(E+1))/(k*1.8*10^12)))*(180/3.14);// in degree
p=((%pi*d)/(x*y))*cos(b*%pi/180);
p1=5.1;// approx. value of p 
A=(2+0.3*p1)/(2+p1+0.6*p1^2);
A1=0.15
ps=(Eg*d)/(300*A1);
P=ps^2;// transmitter power in KW
P1=P*1000;// transmitter power in watts
printf("The transmitter power = %f watts", P1);
printf("\n since antenna efficiency is 50 percent, the transmitter must deliver 31.6049*2=63.2098 watts to the antenna.");