clc

Q1=0.45; // m^3/s
Q2=0.425; // m^3/s
d1=0.6; // m
d2=0.3; // m
p1=1.4*10^5; // Pa
rho=1000; // kg/m^3
theta=45; // degrees

A1=%pi/4*d1^2;
A2=%pi/4*d2^2;

u1=Q1/A1;
u2=Q2/A2;

p2=p1+rho/2*(u1^2-u2^2);

F_x=rho*Q2*(u2*cosd(theta)-u1)-p1*A1+p2*A2*cosd(theta)
F_y=rho*Q2*(u2*sind(theta)-0)+p2*A2*sind(theta);

F=sqrt(F_x^2+F_y^2);
phi=atand(F_y/F_x);

disp("The net horizontal force exerted by the water onthe bend =")
disp(F)
disp("N")

printf("This resultant force acts at angle of %f to the x-direction", phi)