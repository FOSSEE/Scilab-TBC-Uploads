clc

a=5; // m/s^2
s=0.5; // m
phi=atand(1/4); // degrees
g=9.81; // m/s^2
rho=880; // kg/m^3

a_x=a*cosd(phi); // Horizontal component of acceleration
a_z=a*sind(phi); // Vertical component of acceleration

theta=atand(a_x/(a_z+g)); // b=tan(theta)

d=(tand(phi)+tand(theta))/(1-tand(phi)*tand(theta));

c=s*d;

V=s*(s^2-s*c/2);

disp("(a) Volume left in the tank =")
disp(V*1000)
disp("L")

P=rho*g*s*cosd(phi);
disp("(b)Pressure at the lowest corners of the tank =")
disp(P)
disp("Pa")