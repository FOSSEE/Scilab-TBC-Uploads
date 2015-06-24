clc
clear
//Initialization of variables
rho=2.45 //slugs/ft^3
mu=9.2e-3 //lb-sec/ft^2
x=3
v=3 //ft/s
B=6/12 //ft
L=36/12 //ft
//calculatons
Nr=v*x*rho/mu
y=[1.32 1.46 1.328]
Cd=y*Nr^(-0.5)
Fd=2*Cd*B*L*(0.5*rho*v^2)
//results
disp("Drag on the plates using different formulae blasius, parabola and pohlhauser in order")
format('v',6);Fd
disp(Fd)
