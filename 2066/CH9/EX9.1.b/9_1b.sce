clc
clear
//Initialization of variables
x=36/12
rho=2.45 //slugs/ft^3
mu=9.2e-3 //lb-sec/ft^2
v=3 //ft/s
//calculatons
Nr=v*x*rho/mu
z=[4.91 5.48 4.65]
x=36/12
delta=z*x/sqrt(Nr)
f=[0.332 0.365 0.322]
T=f*mu*v/x *sqrt(Nr)
//results
disp("Boundary layer thickness = ")
disp("In order of Blasius, parabola and pohlhauser")
format('v',6);delta
disp(delta)
disp("Shearing stress = ")
disp("In order of Blasius, parabola and pohlhauser")
format('v',6);T
disp(T)
