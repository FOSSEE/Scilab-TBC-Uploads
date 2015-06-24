//Part A Chapter 4 Example 2
clc;
clear;
close;
format('v',6);
m=0.5;//kg
u1=26.6;//kJ/kg
u2=37.8;//kJ/kg
W=0;//as vessel is rigid
U1=m*u1;//kJ
U2=m*u2;//kJ
//Heat required
Q=U2-U1+W;//kJ
disp("Heat required = "+string(Q)+" kJ");
