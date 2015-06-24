//example 12.2
clc; funcprot(0);
// Initialization of Variable
rho=1.94;
A=0.1;
V=50;
p1=30;//pressure
p2=24;//pressure
mdot=rho*A*V;
Fay=-2*mdot*V-(p1+p2)*144*A;
disp(Fay,"resultant force in y direction in lbf");
disp("resultant force in -ve y direction")
clear()
