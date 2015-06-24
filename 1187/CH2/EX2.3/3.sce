clc

rho=1000; // kg/m^3
g=9.81; // m/s^2
r=4; // m
h=2; // m
l=5; // m
theta=%pi/6;

A=h*l;

F_h=rho*g*h*A; // Horizontal force

C0=(2^2/(12*2))+2; // distance of line of action below the free surface

AB=4-4*cos(theta);

F_v=rho*g*l*(AB*1+%pi*r^2*theta/(2*%pi)-1/2*h*r*cos(theta));
BC=0.237; // m

F_net=sqrt(F_h^2+F_v^2);

phi=atand(F_v/F_h);

disp("Net force =")
disp(F_net)
disp("N")

disp("Angle between net force and horizontal =")
disp(phi)
disp("degrees")