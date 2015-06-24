//example 12.8
clc; funcprot(0);
// Initialization of Variable
k=1.4;
p0=1*10^6;
p2=7.84*10^5;
k=1.4;
R=8314;//gas constant
T2=336;//temperature
M2=(2/(k-1)*((p0/p2)^((k-1)/k)-1))^0.5;
disp(M2,"the exit mach no is");
V2=M2*sqroot(k*R/28.97*T2);
mdot=p2*V2/1000/R/T2*28.97;
disp(mdot,"mass flow rate in kg/s");
clear()
