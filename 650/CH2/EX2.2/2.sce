clc
d1=0.2; //m
d2=d1;
p1=1*10^5; //N/m^2
p2=80*10^3; //N/m^2
Q=150; //m^3/h
rho=900; //kg/m^3
theta1=0; //radians
theta2=%pi; //radians

a1=%pi*d1^2/4;
a2=%pi*d2^2/4;

F1=p1*a1; // Upstream force
F2=p2*a2; // Downstream force

v1=4*Q/3600/%pi/d1^2;
v2=v1;

flux=rho*Q/3600*v2; //Momentum flux

Fx=F1*cos(theta1)-F2*cos(theta2)+flux*(cos(theta2) - cos(theta1));
Fy=F1*sin(theta1)-F2*sin(theta2)-flux*(sin(theta2)-sin(theta1));

F=sqrt(Fx^2+Fy^2);
disp("Force exerted by the liquid on the bend =")
disp(F)
disp("N")