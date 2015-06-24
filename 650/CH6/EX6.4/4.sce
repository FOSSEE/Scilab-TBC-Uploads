clc;
C_d=0.6;
d_o=0.05; // m
g=9.8; // m/s^2;
R=2; //
H1=1.5; // 

a_o=%pi*d_o^2/4;

t=%pi/C_d/a_o/sqrt(2*g)*(4/3*R*H1^(3/2)-2/5*H1^(5/2));
disp("The time to drain the tank is found to be ")
disp(t);
disp("seconds");