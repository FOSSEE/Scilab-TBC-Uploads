// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 8")
T1=1800;//temperature of high temperature reservoir in K
T2=300;//temperature of low temperature reservoir in K
Q1=5;//heat addition in MW
W=2;//work done in MW
disp("for irreversible operation of engine,")
disp("rate of entropy generation=Q1/T1+Q2/T2")
disp("W=Q1-Q2=>Q2=Q1-W in MW")
Q2=Q1-W
disp("entropy generated(deltaS_gen)in MW")
disp("deltaS_gen=Q1/T1+Q2/T2")
Q1=-5;//heat addition in MW
deltaS_gen=Q1/T1+Q2/T2
disp("work lost(W_lost)in MW")
disp("W_lost=T2*deltaS_gen")
W_lost=T2*deltaS_gen
