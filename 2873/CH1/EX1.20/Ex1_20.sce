// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 20")
d=5;//diameter of ballon in m
T1=(27+273);//temperature of hydrogen in k
P=1.013*10^5;//atmospheric pressure in pa
T2=(17+273);//temperature of surrounding air in k
R=8.314*10^3;//gas constant in J/kg k
disp("volume of ballon(V1)in m^3")
disp("V1=(4/3)*%pi*(d/2)^3")
V1=(4/3)*%pi*(d/2)^3
disp("molecular mass of hydrogen(M)")
disp("M=2")
M=2;//molecular mass of hydrogen
disp("gas constant for H2(R1)in J/kg k")
disp("R1=R/M")
R1=R/M
disp("mass of H2 in ballon(m1)in kg")
disp("m1=(P*V1)/(R1*T1)")
m1=(P*V1)/(R1*T1)
disp("volume of air displaced(V2)=volume of ballon(V1)")
disp("mass of air displaced(m2)in kg")
disp("m2=(P*V1)/(R2*T2)")
disp("gas constant for air(R2)=0.287 KJ/kg k")
R2=0.287*1000;//gas constant for air in J/kg k
m2=(P*V1)/(R2*T2)
disp("load lifting capacity due to buoyant force(m)in kg")
disp("m=m2-m1")
m=m2-m1
