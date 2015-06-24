// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 7")
M=16;//molecular weight of gas
p1=101.3;//initial pressure of gas in KPa
p2=600;//final pressure of gas in KPa
T1=(273+20);//initial temperature of gas in K
R1=8.3143*10^3;//universal gas constant in J/kg K
Cp=1.7;//specific heat at constant pressure in KJ/kg K
n=1.3;//expansion constant
T2=((p2/p1)^(n-1/n))
disp("characteristics gas constant(R)in J/kg K")
disp("R=R1/M")
R=R1/M
disp("take R=0.520,KJ/kg K")
R=0.520;//characteristics gas constant in KJ/kg K
disp("Cv=Cp-R,inKJ/kg K")
Cv=Cp-R
disp("y=Cp/Cv")
y=Cp/Cv
y=1.44;//ratio of specific heat at constant pressure to constant volume
disp("for polytropic process,v2=((p1/p2)^(1/n))*v1 in m^3")
disp("now,T2=T1*((p2/p1)^((n-1)/n)),in K")
T2=T1*((p2/p1)^((n-1)/n))
disp("work(W)in KJ/kg")
disp("W=R*((T1-T2)/(n-1))")
W=R*((T1-T2)/(n-1))
W=257.78034;//work done in KJ/kg
disp("for polytropic process,heat(Q)in KJ/K")
disp("Q=((y-n)/(y-1))*W")
Q=((y-n)/(y-1))*W

