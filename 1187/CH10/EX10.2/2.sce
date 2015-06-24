clc

w=0.04; // thickness of block in m
d=0.07; // depth of liquid in m
b=0.4; // m
g=9.81; // m/s^2

H=d-w; 

Q=1.705*b*H^(3/2);

u1=Q/d/b;
h=u1^2/(2*g);

H1=H+h;

Q1=1.705*b*H1^(3/2);

disp("Rate of flow = ")
disp(Q1)
disp("m^3/s")