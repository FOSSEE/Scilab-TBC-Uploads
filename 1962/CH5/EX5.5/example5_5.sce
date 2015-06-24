
//example 5.5
//page 202
clc; funcprot(0);
//initialisation of variable
D=7.5/100;
pi=3.14;
Vp=10;//velocity plate
Gamma=9810;
g=9.81;
V=15;
A=pi*D^2/4;
Q=A*V;
P=Gamma/g*Q*(V-Vp)*Vp;
disp(P,"work done per s on the plate (Nm/s)");
F=P/Vp;
disp(F,"force applied on the plate(N)");
Effi=2*(V-Vp)*Vp/V^2;
disp(Effi*100,"Efficiency (%)=")
clear
