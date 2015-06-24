// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh,Chapter 1,Example 14")
P1=750*10^3;//initial pressure of gas in pa
V1=0.2;//initial volume of gas in m^3
T1=600;//initial temperature of gas in k
P2=2*10^5;//final pressure of gas i pa
V2=0.5;//final volume of gas in m^3
disp("using perfect gas equation")
disp("P1*V1/T1 = P2*V2/T2")
disp("=>T2=(P2*V2*T1)/(P1*V1)")
disp("so final temperature of gas(T2)in k")
T2=(P2*V2*T1)/(P1*V1)
disp("or final temperature of gas(T2)in degree celcius")
T2=T2-273
