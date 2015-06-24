//Exam:4.2
clc;
clear;
close;
r_o=3.14;//nearest neighbour equilibrium distance in Å
R_o=3.14*10^(-10);//nearest neighbour equilibrium distance in m
K=5.747*10^(-11);//compressibility of KCl in m2/N
M=1.748;//Madelung constant
pi=22/7;
E_o=8.854*10^(-12);
q=1.6*10^(-19);//electron charge
n=1+18*(R_o^4)*4*pi*E_o/(K*M*q^2);
disp(n,'repulsive exponent n=');