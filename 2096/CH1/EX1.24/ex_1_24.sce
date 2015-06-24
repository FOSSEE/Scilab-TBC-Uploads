//Example 1.24.// calculate the time altitude
clc;
clear;
close;
//given data :
h=2500; // height in meter
t1=8; // in seconds
a=5; // rate of rise balloon in m/s
b=30; // temprerature indicated at an altiude of 2500 m in celcius
c=.011; // rate of temperature variation with altitude in celcius/meter
y=c*a;
Ed=y*t1;
E=Ed/c;
A=h-E;
disp(A,"actual altitude,A(meter) = ")
