// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 3")
T1=315;//temperature of reservoir 1 in K
T2=277;//temperature of reservoir 2 in K
Q2=2;//heat extracted in KJ/s
disp("from thermodynamic temperature scale")
disp("Q1/Q2=T1/T2")
disp("so Q1=Q2*(T1/T2)in KJ/s")
Q1=Q2*(T1/T2)
disp("power/work input required(W)=Q1-Q2 in KJ/s ")
W=Q1-Q2
disp("power required for driving refrigerator=W in KW")
W
