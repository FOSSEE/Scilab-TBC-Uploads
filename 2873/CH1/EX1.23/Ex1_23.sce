// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 23")
V1=0.18;//volume fraction of O2 in m^3
V2=0.75;//volume fraction of N2 in m^3
V3=0.07;//volume fraction of CO2 in m^3
P=0.5;//pressure of mixture in Mpa
T=(107+273);//temperature of mixture in k
M1=32;//molar mass of O2
M2=28;//molar mass of N2
M3=44;//molar mass of CO2
disp("mole fraction of constituent gases")
disp("x=(ni/n)=(Vi/V)")
disp("take volume of mixture(V)=1 m^3")
V=1;// volume of mixture in m^3
disp("mole fraction of O2(x1)")
disp("x1=V1/V")
x1=V1/V
disp("mole fraction of N2(x2)")
disp("x2=V2/V")
x2=V2/V
disp("mole fraction of CO2(x3)")
disp("x3=V3/V")
x3=V3/V
disp("now molecular weight of mixture = molar mass(m)")
disp("m=x1*M1+x2*M2+x3*M3")
m=x1*M1+x2*M2+x3*M3
disp("now gravimetric analysis refers to the mass fraction analysis")
disp("mass fraction of constituents")
disp("y=xi*Mi/m")
disp("mole fraction of O2")
disp("y1=x1*M1/m")
y1=x1*M1/m
disp("mole fraction of N2")
disp("y2=x2*M2/m")
y2=x2*M2/m
disp("mole fraction of CO2")
disp("y3=x3*M3/m")
y3=x3*M3/m
disp("now partial pressure of constituents = volume fraction * pressure of mixture")
disp("Pi=xi*P")
disp("partial pressure of O2(P1)in Mpa")
disp("P1=x1*P")
p1=x1*P
disp("partial pressure of N2(P2)in Mpa")
disp("P2=x2*P")
P2=x2*P
disp("partial pressure of CO2(P3)in Mpa")
disp("P3=x3*P")
P3=x3*P
disp("NOTE=>Their is some calculation mistake for partial pressure of CO2(i.e 0.35Mpa)which is given wrong in book so it is corrected above hence answers may vary.")












