//example 1.6
//page 20
clc; funcprot(0);
//initialisation of variable
mu=0.09//viscosity
U=1;//velocity
Y=1/1000;//clearence
L=0.2;
d=0.05;
pi=3.14;
sigma=mu*U/Y;//stress
A=pi*d*L;
F=A*sigma;
disp(F,"Force applied (N)=");
clear
