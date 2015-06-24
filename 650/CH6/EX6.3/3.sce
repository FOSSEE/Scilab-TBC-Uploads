clc;
Vt=1; // m^3
d_t=1; // m
C_d=0.6; 
d_o=0.02; // m
g=9.8; // m/s^2
a_o=%pi*(d_o)^2/4;

A=%pi*(d_t)^2/4;

H1=4*Vt/%pi/(d_t)^2;

t=A/C_d/a_o*sqrt(2*H1/g);
disp("Total drainage is found to take ")
disp(t)
disp(" seconds");