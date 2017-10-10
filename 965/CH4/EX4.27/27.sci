clc;
clear all;
disp("The Time lag")
x=300/1000;//m
rho=1600;// kg/m^3
k=0.65;//W/(m.C)
c=440;// J/(kg.C)
n=1/24;// h^-1
n
a=k*3600/(rho*c);
a
deltau = (x/2)*(1/(3.1416*a*n)^(0.5));

disp("h",deltau,"time lag =")

