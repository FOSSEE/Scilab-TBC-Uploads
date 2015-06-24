//Ex_2_21
clc;
clear;
close;
format('v',4);
//given data :
N=500;//turns
A=0.01;//m^2(Area of cross section of poles)
l=0.5;//m(mean length)
mu0=4*%pi*10^-7;//permeability of air
mu_r=1000;///relative permeability
g=9.8;//gravitational acceleration
W=200;//kg
F=W/2;//kg
F=F*g;//N
B=sqrt(F*2*mu0/A);//Wb/m^2
H=B/mu0/mu_r;//Wb/m^2
I=H*l/N;//A
disp(I,"Exciting current(A)");
