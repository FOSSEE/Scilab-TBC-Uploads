// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 6")
To=(30+273);//temperature of surrounding in K
W=1050;//work done in engine in KJ/kg
Cp=1.1;//specific heat at constant pressure in KJ/kg K
T=(800+273);//temperature of exhaust gas in K
disp("loss of available energy=irreversibility=To*deltaSc")
disp("deltaSc=deltaSs+deltaSe")
disp("change in enropy of system(deltaSs)=W/T in KJ/kg K")
deltaSs=W/T
disp("change in entropy of surrounding(deltaSe)=-Cp*(T-To)/To in KJ/kg K")
deltaSe=-Cp*(T-To)/To
disp("loss of available energy(E)=To*(deltaSs+deltaSe)in KJ/kg")
E=To*(deltaSs+deltaSe)
disp("loss of available energy(E)=")
E=-E
disp("ratio of lost available exhaust gas energy to engine work=E/W")
E/W
