// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 29")
V=2;//volume of vessel in m^3
P1=76;//initial pressure or atmospheric pressure in cm of Hg
T=(27+273.15);//temperature of vessel in k
p=70;//final pressure in cm of Hg vaccum
R=8.314;//universal gas constant in KJ/kg k
M=2;//molecular weight of H2
disp("gas constant for H2(R1)in KJ/kg k")
disp("R1=R/M")
R1=R/M
disp("say initial and final ststes are given by 1 and 2")
disp("mass of hydrogen pumped out shall be difference of initial and final mass inside vessel")
disp("final pressure of hydrogen(P2)in cm of Hg")
disp("P2=P1-p")
P2=P1-p
disp("therefore pressure difference(P)in kpa")
disp("P=((P1-P2)*101.325)/76")
P=((P1-P2)*101.325)/76
disp("mass pumped out(m)in kg")
disp("m=((P1*V1)/(R1*T1))-((P2*V2)/(R1*T2))")
disp("here V1=V2=V and T1=T2=T")
disp("so m=(V*(P1-P2))/(R1*T)")
m=(V*P)/(R1*T)
disp("now during cooling upto 10 degree celcius,the process may be consider as constant volume process")
disp("say state before and after cooling are denoted by suffix 2 and 3")
T3=(10+273.15);//final temperature after cooling in k
disp("final pressure after cooling(P3)in kpa")
disp("P3=(T3/T)*P2*(101.325/76)")
P3=(T3/T)*P2*(101.325/76)
