clear;
clc;

//Example13.6[Radiation Heat Transfer in a Black Furnace]
//Given:-
F12=0.2;
A=5*5;//Area of 1 surface of cube[m^2]
Tb=800,Tt=1500,Ts=500;//Temperature of base top and the side surfaces of the furbace[K]
//Solution:-
F11=0;
Q11=0;
F13=1-F11-F12;
Q13=A*F13*(5.67*10^(-8))*((Tb^4)-(Ts^4));//[kW]
disp("kW",round(Q13/1000),"The net rate of heat transfer from surface1 to surface3 is")
Q12=A*F12*(5.67*10^(-8))*((Tb^4)-(Tt^4));//[kW]
disp("kW",round(Q12/1000),"The net rate of radiation heat transfer from siurface1 to surface2 is")
Q1=Q11+Q12+Q13;//[kW]
disp("kW",round(Q1/1000),"Rhe net radiation heat transfer from the base surface is")
