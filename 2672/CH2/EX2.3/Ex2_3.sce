//Ex_2_3
clc;
clear;
close;
format('v',6);  
//given data : 
N=100;//turns
l=0.5;//m
A=10/10000;//m^2
mur=2000;//relative permeability of iron
mu0=4*%pi*10^-7;//permeability
I=5;//A
t=10;//ms
L=mur*mu0*N^2*A/l*1000;//mH
disp(L,"Inductance of the coil(mH)");
E=L*2*I/t;//V
disp(E,"Induced emf in the coil(V)");
