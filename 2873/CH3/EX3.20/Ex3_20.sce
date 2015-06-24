// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 20")
v1=0;//initial volume of air inside bottle in m^3
v2=0.5;//final volume of air inside bottle in m^3
p=1.0135*10^5;//atmospheric pressure in pa
disp("displacement work,W=p*(v1-v2)in N.m")
W=p*(v1-v2)
disp("so heat transfer(Q)in N.m")
disp("Q=-W")
Q=-W
