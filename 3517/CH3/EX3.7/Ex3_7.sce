//Caption:Calculate Capacitance and Resistance
//Ex3.7
clc;
clear;
close;
E=10//Input voltage(in volts)
f=1//Frequency(in Khz)
Rs=500//Source resistance(in ohms)
t=0.01//Tilt
T=1/(f)
pw=T*1000/2
C=pw/Rs
R=pw/(t*C*1000)
disp(R,C,'Capacitance(in micro farad) and Resistance(in Kilo ohm)=')