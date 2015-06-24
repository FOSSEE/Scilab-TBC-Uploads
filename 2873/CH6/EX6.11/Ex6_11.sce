// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 6 Example 11")
p2=200;//feed water pump pressure in Kpa
disp("from 1st and 2nd law;")
disp("T*ds=dh-v*dp")
disp("for isentropic process,ds=0")
disp("hence dh=v*dp")
disp("i.e (h2-h1)=v1*(p2-p1)")
disp("corresponding to initial state of saturated liquid at 30 degree celcius;from steam table;")
disp("p1=4.25 Kpa,vf=v1=0.001004 m^3/kg")
p1=4.25;
v1=0.001004;
disp("therefore enthalpy change(deltah)=(h2-h1)=v1*(p2-p1)in KJ/kg")
deltah=v1*(p2-p1)
