//Ex_2_10
clc;
clear;
format('v',6);
close;
//given data : 
D=25/100;//m
A=9/10000;//m^2
N=100;//turns
I=1.5;//A
l=%pi*D;//m
mur=2000;//relative permeability
mu0=4*%pi*10^-7;//permeability
fi=N*I/l*(mu0*mur*A);//Wb
disp(fi*1000,"Flux produced(mWb)");
