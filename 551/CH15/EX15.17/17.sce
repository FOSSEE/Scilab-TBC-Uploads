clc
rho=983.2; //kg/m^2
cp=4.187; //kJ/kg K
k=0.659; //W/m 0C
v=0.478*10^(-6); //m^2/s
m=0.5/60; //kg/s
D=0.02; //m
ti=20; //0C
t0=50; //0C
ts=85; //surface temperature in 0C

tf=1/2*(ts+(ti+t0)/2);
A=%pi/4*D^2;
u=m/rho/A;
Re=D*u/v;
//Since Re < 2000, hence the flow is laminar.

Nu=3.65;
h=Nu*k/D;
tb=(t0+ti)/2;

L=m*cp*10^3*(t0-ti)/(ts-tb)/h/D/%pi;
disp("Length of the tube required for fully developed flow =")
disp(L)
disp("m")