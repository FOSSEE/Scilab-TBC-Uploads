// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 23")
m=75;//mass of hot water in kg
T1=(400+273);//temperature of hot water in K
T2=(27+273);//temperature of environment in K
Cp=4.18;//specific heat of water in KJ/kg K
disp("here the combined closed system consists of hot water and heat engine.here there is no thermal reservoir in the system under consideration.for the maximum work output,irreversibility=0")
disp("therefore,d(E-To-S)/dt=W_max")
disp("or W_max=(E-To-S)1-(E-To-S)2")
disp("here E1=U1=m*Cp*T1,E2=U2=m*Cp*T2")
disp("therefore,W_max=m*Cp*(T1-T2)-To*m*Cp*log(T1/T2)in KJ")
To=T2;
W_max=m*Cp*(T1-T2)-To*m*Cp*log(T1/T2)
disp("so maximum work in KJ=")
W_max
