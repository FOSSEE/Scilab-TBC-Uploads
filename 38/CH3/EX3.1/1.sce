// Caption: Finding Torque acting on the rotor

close;
clc;
syms alpha;
I=10;//current
B_o=0.5;//magnetic field
R=0.1;
l=0.6;

T=2*I*B_o*R*l*sin(alpha);

disp(T,'Torque acting on the rotor=');