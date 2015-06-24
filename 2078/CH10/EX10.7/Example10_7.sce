//Exa 10.7
clc;
clear;
close;
//Given data :
D=19.5;//mm
wc=0.85;//kg/m
L=275;//m
Pw=39;//kg/m^2(Wind pressure)
r=13;//mm
U_stress=8000;//kg/cm^2
SF=2;//factor of safety
rho_i=910;//kg/m^3(density of ice)
T=U_stress/SF;//kg
wi=rho_i*%pi*r*10^-3*(D+r)*10^-3;//kg
w_w=Pw*(D+2*r)*10^-3;//kg
wr=sqrt((wc+wi)^2+w_w^2);//kg
Smax=wr*L^2/8/T;//msag in air
disp(Smax,"Maximum Sag(meter)");
