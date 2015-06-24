// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 21")
v=0.25;//volume sucking rate of pump in m^3/min
V=20;//volume of air vessel in m^3
disp("let initial receiver pressure(p1)=1 in pa")
p1=1;//initial receiver pressure in pa
disp("so final receiver pressure(p2)=p1/4 in pa")
p2=p1/4
disp("perfect gas equation,p*V*m=m*R*T")
disp("differentiating and then integrating equation w.r.t to time(t) ")
disp("we get t=-(V/v)*log(p2/p1)")
disp("so time(t)in min")
t=-(V/v)*log(p2/p1)

