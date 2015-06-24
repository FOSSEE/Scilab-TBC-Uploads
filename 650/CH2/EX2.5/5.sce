clc
Q=10; // m^3/hr
d1=0.05; //m
d2=0.1; //m
rho=1000; //kg/m^3

a1=%pi*d1^2/4;
a2=%pi*d2^2/4;

v1=Q/3600/a1;
v2=(d1/d2)^2*v1;

PD=rho*Q/3600*(v1-v2)/a2;
disp("Pressure drop =")
disp(PD)
disp("N/m^2")