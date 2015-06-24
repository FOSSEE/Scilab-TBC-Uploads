clc
p=88.3; //kN/m^2
T=271; //K
M=40*%pi/180;
y=1.4;
R=287; //J/kg K

C=sqrt(y*R*T);

V=C/sin(M);
disp("Velocity of the projectile =")
disp(V)
disp("m/s")