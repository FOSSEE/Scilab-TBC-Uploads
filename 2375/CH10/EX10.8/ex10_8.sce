// Exa 10.8
clc;
clear;
close;
format('v',6)
// Given data
A = 100;
Beta = 1/25;
Af = A/(1 + (A*Beta));
disp(Af,"The gain with feedback is");
disp((A*Beta),"The feed back factor is");
Vi = 50;// in mV
Vo =Af*Vi*10^-3;// in V
disp(Vo,"The output voltage in V is");
V_feedback= (Beta*Vo);// feedback voltage in V
disp(V_feedback,"The feed back voltage in V is");
Vi = Vi*(1+(A*Beta));// in mV
disp(Vi,"The new input voltage in mV is");
