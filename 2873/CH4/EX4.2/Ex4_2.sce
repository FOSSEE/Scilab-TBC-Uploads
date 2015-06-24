// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 2")
T1=(400+273);//temperature of source in K
T2=(15+273);//temperature of sink in K
W=200;//work done in KJ
disp("in carnot engine from thermodynamics temperature scale")
disp("Q1/Q2=T1/T2")
disp("W=Q1-Q2=200 KJ")
disp("from above equations Q1 in KJ is given by")
disp("Q1=(200*T1)/(T1-T2)")
Q1=(200*T1)/(T1-T2)
disp("and Q2 in KJ")
disp("Q2=Q1-200")
Q2=Q1-200
disp("so heat supplied(Q1) in KJ")
Q1
