clear;
clc;
close;
disp("Example2.3")
d1=1.2 //inlet 1 density in kg/m^3.
u1=25 // inlet 1 veocity in m/s.
a1=0.25 //inlet 1 area in m^2.
d2=0.2 //inlet 2 density in kg/m^3.
u2=225 //inlet 2 velocity in m/s.
a2=0.10 //inlet 2 area in m^2.
m1=d1*a1*u1; //rate of mass flow entering inlet 1.
m2=d2*u2*a2; //rate of mass flow entering inlet 2.
//since total mass in=total mass out,
m3=m1+m2; //m3=rate of mass flow through exit.
disp(m3,"Rate of mass flow through exit in kg/s:")

