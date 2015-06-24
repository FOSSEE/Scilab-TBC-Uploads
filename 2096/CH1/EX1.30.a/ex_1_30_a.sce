//Example 1.30.a // determine the maximum value of temperature
clc;
clear;
close;
//given data :
T=20; // rate change of temperature may be +ve or -ve in celcius
t=120; // in seconds
t1=18; // time constant for the bulb in seconds
t2=36; // time constant for the well in seconds
w=2*%pi*(1/t);
a=1/sqrt(1+(w*t1)^2);
b=1/sqrt(1+(w*t2)^2);
I=a*b;
Tmax=T*I;
disp(Tmax,"the maximum indicated temperature,Tmax(celcius) = ±")
