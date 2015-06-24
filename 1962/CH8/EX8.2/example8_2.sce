
//example 8.2
//page 290
clc; funcprot(0);
//initialisation of variable
nu=1.54*10^-6;
V=0.1;
D=0.02;
g=9.81;
L=30;
Re=V*D/nu;
f=64/Re;
hf=f*L/D*V^2/2/g;
disp(hf,"head loss (m of H20)");
clear
