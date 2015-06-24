// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 23")
Cp=1.005;//specific heat at constant pressure in KJ/kg K
Cv=0.718;//specific heat at constant volume in KJ/kg K
y=1.4;//expansion constant 
p1=40*10^5;//initial temperature of air in pa
v1=0.15;//initial volume of air in m^3
T1=(27+273);//initial temperature of air in K
p2=2*10^5;//final temperature of air in pa
v2=0.15;//final volume of air in m^3
R=0.287;//gas constant in KJ/kg K
disp("initial mass of air in bottle(m1)in kg ")
disp("m1=(p1*v1)/(R*1000*T1)")
m1=(p1*v1)/(R*1000*T1)
disp("now final temperature(T2)in K")
disp("T2=T1*(p2/p1)^((y-1)/y)")
T2=T1*(p2/p1)^((y-1)/y)
T2=127.36;//take T2=127.36 approx.
disp("final mass of air in bottle(m2)in kg")
disp("m2=(p2*v2)/(R*1000*T2)")
m2=(p2*v2)/(R*1000*T2)
m2=0.821;//take m2=0.821 approx.
disp("energy available for running of turbine due to emptying of bottle(W)in KJ")
disp("W=(m1*Cv*T1-m2*Cv*T2)-(m1-m2)*Cp*T2")
W=(m1*Cv*T1-m2*Cv*T2)-(m1-m2)*Cp*T2
disp("work available from turbine=639.09 KJ")
