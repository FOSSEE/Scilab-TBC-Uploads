clc
m=10; // kg
M=80; // kg
OG=0.8333; // m
rho=1026; // kg/m^3
g=9.81; // m/s^2
d=1; // m
W=(m+M)*g;

// W(OG) = (W + F)(OB + BM) = rho*g*%pi/4*d^2*h1*(h1/2+d^2/(16*h1))

h1=sqrt(2*(W*OG/(rho*g*%pi/4*d^2) - d^2/16));

F=rho*g*%pi/4*d^2*h1 - W;

disp("Least vertical downward force =")
disp(F)
disp("N")

disp("Depth of immersion =")
disp(h1)
disp("m")
