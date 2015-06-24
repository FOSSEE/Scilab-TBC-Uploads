// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 19")
p1=0.5*10^6;//initial pressure of air in pa
v1=0.5;//initial volume of air in m^3
T1=(27+273);//initial temperature of air in K
p2=1*10^6;//final pressure of air in pa
v2=0.5;//final volume of air in m^3
T2=500;//final temperature of air in K
R=8314;//gas constant in J/kg K
Cv=0.716;//specific heat at constant volume in KJ/kg K
disp("using perfect gas equation for the two chambers having initial states  as 1 and 2 and final states as 3")
disp("n1=(p1*v1)/(R*T1)")
n1=(p1*v1)/(R*T1)
disp("now n2=(p2*v2)/(R*T2)")
n2=(p2*v2)/(R*T2)
disp("for tank being insulated and rigid we can assume,deltaU=0,W=0,Q=0,so writing deltaU,")
deltaU=0;//change in internal energy
disp("deltaU=n1*Cv*(T3-T1)+n2*Cv*(T3-T2)")
disp("final temperature of gas(T3)in K")
disp("T3=(deltaU+Cv*(n1*T1+n2*T2))/(Cv*(n1+n2))")
T3=(deltaU+Cv*(n1*T1+n2*T2))/(Cv*(n1+n2))
disp("using perfect gas equation for final mixture,")
disp("final pressure of gas(p3)in Mpa")
disp("p3=((n1+n2)*R*T3)/(v1+v2)")
p3=((n1+n2)*R*T3)/(v1+v2)
disp("so final pressure and temperature =0.75 Mpa and 409.11 K")
