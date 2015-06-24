//Part B Chapter 4 Example 18
clc;
clear;
close;
d=3.5/1000;//m
tau_s=240*10^6;//N/m^2
Ip=%pi/32*d^4;//m^4
T=tau_s*Ip/(d/2);//Nm
disp("Maximum torque transmitted is "+string(T)+" Nm.");
