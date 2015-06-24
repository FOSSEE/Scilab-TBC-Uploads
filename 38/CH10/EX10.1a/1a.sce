// Caption: Finding maximum inductance for phase 
clear;
close;
clc;
N=100;
U_o=4*%pi*10^-7;
alpha=%pi/3;
R=3.8*10^-2;
D=0.13;
g=2.54*10^-4;
L_max=N^2*U_o*alpha*R*D/(2*g);

disp(L_max,'maximum inductance for phase 1=')
