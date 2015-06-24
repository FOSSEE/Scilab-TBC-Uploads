//example 16.8
clc; funcprot(0);
// Initialization of Variable
D=0.125;
h=25;//W/m^2
k=1.4;
c=835;//J/kg
Tinfinity=20;//degreeC
Ti=225;//degreeC
t=360;
rho=2225;//density
Lc=D/6;
Tt=Tinfinity+(Ti-Tinfinity)*exp(-h*t/rho/Lc/c);
disp(Tt,"temperature after 6 min in degreeC");
clear()
