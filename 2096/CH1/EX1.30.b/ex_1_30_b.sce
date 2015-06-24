//Example 1.30.b // determine the maximum value of temperature
clc;
clear;
close;
//given data :
T=20; // rate change of temperature may be +ve or -ve in celcius
t=120; // in seconds
t1=18; // time constant for the bulb in seconds
t2=36; // time constant for the well in seconds
w=2*%pi*(1/t);
A=atan(w*t1)+atan(w*t2); // angle of lag
L=(1/w)*A;
disp(L,"the time lag,L(seconds) = ")
