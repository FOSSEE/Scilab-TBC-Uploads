// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 4 Example 8")
T1=(27+273);//temperature of source in K
T2=(-8+273);//temperature of sink in K
Q=7.5;//heat leakage in KJ/min
disp("here heat to be removed continuously from refrigerated space(Q)in KJ/s")
Q=Q/60
disp("for refrigerated,COP shall be Q/W=1/((T1/T2)-1)")
disp("W=Q*((T1/T2)-1) in KW")
W=Q*((T1/T2)-1)
disp("so power required(W)in KW")
W
