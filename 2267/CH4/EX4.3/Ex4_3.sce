//Part A Chapter 4 Example 3
clc;
clear;
close;
format('v',6);
m=50;//kg/hr
T1=800;//degree C
T2=50;//degree C
Cp=1.08;//kJ/kgK
Q=m*Cp*(T1-T2);//kJ/hr
disp("Heat should be removed at the rate of  "+string(Q)+" kJ/hr");
