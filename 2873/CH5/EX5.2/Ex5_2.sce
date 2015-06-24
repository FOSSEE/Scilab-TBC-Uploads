// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 5 Example 2")
T1=(27+273);//temperature of water in K
T2=(100+273);//steam temperature of water in K
m=5;//mass of water in kg
q=2260;//heat of vaporisation at 100 degree celcius in KJ/kg
Cp=4.2;//specific heat of water at constant pressure in KJ/kg K
M=18;//molar mass for water/steam 
R1=8.314;//gas constant in KJ/kg K
disp("total entropy change=entropy change during water temperature rise(deltaS1)+entropy change during water to steam change(deltaS2)+entropy change during steam temperature rise(deltaS3)")
disp("deltaS1=Q1/T1,where Q1=m*Cp*deltaT")
disp("heat added for increasing water temperature from 27 to 100 degree celcius(Q1)in KJ")
disp("Q1=m*Cp*(T2-T1)")
Q1=m*Cp*(T2-T1)
disp("deltaS1=Q1/T1 in KJ/K")
deltaS1=Q1/T1
disp("now heat of vaporisation(Q2)=m*q in KJ")
Q2=m*q
disp("entropy change during phase transformation(deltaS2)in KJ/K")
disp("deltaS2=Q2/T2")
deltaS2=Q2/T2
disp("entropy change during steam temperature rise(deltaS3)in KJ/K")
disp("deltaS3=m*Cp_steam*dT/T")
disp("here Cp_steam=R*(3.5+1.2*T+0.14*T^2)*10^-3 in KJ/kg K")
disp("R=R1/M in KJ/kg K")
R=R1/M
T2=(100+273.15);//steam temperature of water in K
T3=(400+273.15);//temperature of steam in K
disp("now deltaS3=(m*R*(3.5+1.2*T+0.14*T^2)*10^-3)*dT/T in KJ/K")
function y = f(T), y =(m*R*(3.5+1.2*T+0.14*T^2)*10^-3)/T , endfunction
deltaS3 = intg(T2, T3, f) 
disp("total entropy change(deltaS)=deltaS1+deltaS2+deltaS3 in KJ/K")
deltaS3=51.84;//approximately
deltaS=deltaS1+deltaS2+deltaS3


