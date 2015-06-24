//Caption: Calculate efficiency of motor
//Exa:8.11
clc;
clear;
close;
W=25//Effective load on break drum(in kgf)
d=50//Diameter of drum(in cm)
n=750//Speed of the motor(in r.p.m)
I=25//Current taken by motor(in A)
V=230//Voltage of motor(in volts)
P_o=(2*%pi*n*W*9.81*(d/2))/(60*100)
P_i=V*I
Eff=(P_o/P_i)*100
disp(Eff,'Efficiency of motor(in %)=')