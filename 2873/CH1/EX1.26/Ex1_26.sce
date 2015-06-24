// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 26")
m1=18;//mass of hydrogen(H2) in kg
m2=10;//mass of nitrogen(N2) in kg
m3=2;//mass of carbon dioxide(CO2) in kg
R=8.314;//universal gas constant in KJ/kg k
Pi=101.325;//atmospheric pressure in kpa
T=(27+273.15);//ambient temperature in k
M1=2;//molar mass of H2
M2=28;//molar mass of N2
M3=44;//molar mass of CO2
disp("gas constant for H2(R1)in KJ/kg k")
disp("R1=R/M1")
R1=R/M1
disp("gas constant for N2(R2)in KJ/kg k")
disp("R2=R/M2")
R2=R/M2
disp("gas constant for CO2(R3)in KJ/kg k")
disp("R3=R/M3")
R3=R/M3
disp("so now gas constant for mixture(Rm)in KJ/kg k")
disp("Rm=(m1*R1+m2*R2+m3*R3)/(m1+m2+m3)")
Rm=(m1*R1+m2*R2+m3*R3)/(m1+m2+m3)
disp("considering gas to be perfect gas")
disp("total mass of mixture(m)in kg")
disp("m=m1+m2+m3")
m=m1+m2+m3
disp("capacity of vessel(V)in m^3")
disp("V=(m*Rm*T)/Pi")
V=(m*Rm*T)/Pi
disp("now final temperature(Tf) is twice of initial temperature(Ti)")
disp("so take k=Tf/Ti=2")
k=2;//ratio of initial to final temperature 
disp("for constant volume heating,final pressure(Pf)in kpa shall be")
disp("Pf=Pi*k")
Pf=Pi*k














