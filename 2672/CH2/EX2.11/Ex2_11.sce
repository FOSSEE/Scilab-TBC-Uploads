//Ex_2_11
clc;
clear;
close;
format('v',6);
//given data : 
lg=0.01/100;//m(airgap)
li=39.99/100;//m(mean length)
mur=2000;//relative permeability
mu0=4*%pi*10^-7;//permeability
N=1000;//turns
A=9/10000;//m^2
fi=1;//mWb
S=li/(mu0*mur*A)+lg/(mu0*A);//AT/Wb
I=fi*10^-3*S/N;//A
disp(I,"Current required(A)");
