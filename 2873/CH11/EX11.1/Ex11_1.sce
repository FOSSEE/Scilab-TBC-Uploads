// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 1")
T1=(-16+273);//temperature of refrigerated space in K
T2=(27+273);//temperature of atmosphere in K
Q1=500;//heat extracted from refrigerated space in KJ/min
disp("for refrigerator working on reversed carnot cycle.")
disp("Q1/T1=Q2/T2")
disp("so Q2=Q1*T2/T1 in KJ/min")
Q2=Q1*T2/T1
disp("and work input required,W in KJ/min")
disp("W=Q2-Q1")
W=Q2-Q1
