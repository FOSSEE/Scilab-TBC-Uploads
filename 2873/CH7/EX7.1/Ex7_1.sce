// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 1")
C2=150;//leave velocity of steam in m/s
m=2.5;//steam mass flow rate in kg/s
disp("let us neglect the potential energy change during the flow.")
disp("applying S.F.E.E,neglecting inlet velocity and change in potential energy,")
disp("W_max=(h1-To*s1)-(h2+C2^2/2-To*s2)")
disp("W_max=(h1-h2)-To*(s1-s2)-C2^2/2")
disp("from steam tables,")
disp("h1=h_1.6Mpa_300=3034.8 KJ/kg,s1=s_1.6Mpa_300=6.8844 KJ/kg,h2=h_0.1Mpa_150=2776.4 KJ/kg,s2=s_150Mpa_150=7.6134 KJ/kg")
h1=3034.8;
s1=6.8844;
h2=2776.4;
s2=7.6134;
disp("given To=288 K")
To=288;
disp("so W_max in KJ/kg")
W_max=(h1-h2)-To*(s1-s2)-(C2^2/2*10^-3)
disp("maximum possible work(W_max)=m*W_max in KW")
W_max=m*W_max
