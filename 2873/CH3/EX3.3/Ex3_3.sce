// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 3")
m=50;//rate at which carbon dioxide passing through heat exchanger in kg/hr
T2=800;//initial temperature of carbon dioxide in degree celcius
T1=50;//final temperature of carbon dioxide in degree celcius
Cp=1.08;//specific heat at constant pressure in KJ/kg K
disp("by steady flow energy equation")
disp("q+h1+C1^2/2+g*z1=h2+C2^2/2+g*z2+w")
disp("let us assume changes in kinetic and potential energy is negligible,during flow the work interaction shall be zero")
disp("q=h2-h1")
disp("rate of heat removal(Q)in KJ/hr")
disp("Q=m(h2-h1)=m*Cp*(T2-T1)")
Q=m*Cp*(T2-T1)
disp("heat should be removed at the rate of 40500 KJ/hr")
