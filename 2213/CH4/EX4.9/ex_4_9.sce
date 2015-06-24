//Example 4.9//candle power of lamp
clc;
clear;
close;
format('v',7)
L1=500;//candle power 
h1=9;//in meters
d=2;//distance in meters
I2=20;//illumination in Lux
x=sqrt(h1^2+d^2);//from pythagoras theoram
Cpx=((I2-(L1/h1^2))*h1^2)/((h1/x)^3);//candle power 
disp(Cpx,"candle power of lamp two in CP")
