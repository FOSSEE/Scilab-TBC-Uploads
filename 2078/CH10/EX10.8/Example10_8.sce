//Exa 10.8
clc;
clear;
close;
//Given data :
wc=1;//kg/m
L=280;//m
D=20;//mm
r=10;//mm
Pw=40;//kg/m^2(Wind pressure)
rho_i=910;//kg/m^3(density of ice)
U_stress=10000;//kg/cm^2
SF=2;//factor of safety
wi=rho_i*%pi*r*10^-3*(D+r)*10^-3;//kg
w_w=Pw*(D+2*r)*10^-3;//kg
wr=sqrt((wc+wi)^2+w_w^2);//kg(Resultant force per m length of conductor)
T=U_stress/SF;//kg
Smax=wr*L^2/8/T;//msag in air
disp(Smax,"Maximum Sag(meter)");
