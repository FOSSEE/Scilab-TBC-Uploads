clc

Cd=0.61;
g=9.81; // m/s^2
b=0.6; // m
H=0.155; // mQ
A=0.26; // m^2
u1=0.254; // m/s

Q=2/3*Cd*sqrt(2*g*b*(H)^3/2);

velo=Q/A;

H1=H+u1^2/(2*g);

Q1=2/3*Cd*sqrt(2*g*b*(H1)^3/2);

disp("Discharge =")
disp(Q1)
disp("m^3/s")