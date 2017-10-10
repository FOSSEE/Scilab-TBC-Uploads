//Exa:2.3.3
clc;
clear;
close;
P=10000;//in watts
I=60;//in amperes
V=400;//in volts
//When the coil is connected between phase A and Neutral;
theta=acosd(P/(V*I/sqrt(3)));//in degrees
alpha=90-theta;//in degrees
W=V*I*cosd(alpha)/1000;
disp(W,'Wattmeter Reading (in watts)=')