clc
Q=100; //m^3/hr
d1=0.2; //m
d2=0.15; //m
p1=80*10^3; //N/m^2
rho=1000; //kg/m^3
g=9.8; //m/s^2

a1=%pi*d1^2/4;
a2=%pi*d2^2/4;
v1=Q/3600/a1;
v2=Q/3600/a2;
H_L=0.2*v2^2/2/g;
p2=p1+rho/2*(v1^2-v2^2)-rho*g*H_L;

F_u=p1*a1; // Upstream force
F_d=p2*a2; // Downstream force

F_x=rho*Q/3600*(v2-v1)-F_u+F_d;
disp("Force required =")
disp(F_x)
disp("N")