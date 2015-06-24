//example 17.5
clc; funcprot(0);
// Initialization of Variable
Ti=75;
k=0.02588;
D=0.01;
Nu=47.4
rho=8933;//density
c=387;
D=0.01;
Tinfinity=23;
T=35;
h=Nu*k/D;
t=rho*c*D/6/h*log((Ti-Tinfinity)/(T-Tinfinity));
disp(t,"cooling time required in s");
Bi=h*0.005/3/399;
disp(Bi,"Biots number")
clear()
