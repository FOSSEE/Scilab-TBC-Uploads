//Ex_2_18
clc;
clear;
close;
format('v',7);
//given data :
lg=1/1000;//m//air-gap
li=20/100;//m//flux path
mu0=4*%pi*10^-7;//permeability of air
mu_r=500;///relative permeability
A=0.5*10^-4;//m^2//Area
I=50/1000;//A
N=8000;//turns
S=li/mu0/mu_r/A+2*lg/mu0/A;//AT/Wb
fi=N*I/S;//Wb
B=fi/A;//Wb/m^2
disp(B,"Flux Density(Wb/m^2)");
format('v',5);
F=B*A/2/mu0;//N
disp(F,"Magnetic Pull(N)");
