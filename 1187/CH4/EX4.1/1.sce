clc

rho=1000; // kg/m^3
u1=36; // m/s
u2=30; // m/s
d=0.05; // m
theta=60; // degrees

A=%pi/4*d^2;

Q=A*u1;

F_x=rho*Q*(u2*cosd(theta) - u1);
F_y=rho*Q*u2*sind(theta);

F=sqrt(F_x^2+F_y^2);
phi=atand(F_y/F_x);

disp("The Hydrodynamic force on the vane =")
disp(F)
disp("N")

printf("This resultant force acts at angle of %f to the x-direction", phi)
 