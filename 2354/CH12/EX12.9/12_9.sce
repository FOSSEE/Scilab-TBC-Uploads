//example 12.9
clc; funcprot(0);
// Initialization of Variable
k1=0.88;//p2/poy;
k2=0.628;//poy/pox
pox=100;//pressure
R=1545;
T2=494;
k=1.4;
M2=0.24;
A=2.4;
V2=M2*sqroot(k*R/28.97*T2*32.2);
mdot=95.9*A*V2/T2/R*28.97;
disp(mdot,"mass flow rate in lb/s");
p2=k1*k2*pox;
disp(p2,"pressure in lbf/in^2")
clear()
