clc;
Q=5000/3600/24; // m^3 per second
C_d=0.6; 
r=0.01/2; // m
g=9.8; // m/s^2
H=0.2; // m
a_o=%pi*r^2;

n=Q/C_d/a_o/sqrt(2*g*H);
disp("The number of orifices required are")
disp(n);