clc
p=2*10^5; // Pa
T=300; // K
R=287; // J/(kg.K)
V=3; // m^3

rho=p/(R*T);
disp("(a) The density of air = ")
disp(rho)
disp("kg/m^3")

m=rho*V;
disp("(b) Its mass =")
disp(m)
disp("m^3")