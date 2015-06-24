//Exa 1.9
clc;
clear;
close;
format('v',7);

//Given Data :
Pmercury=10;//cm of Hg
Patm=760;//mm of Hg
Patm=1.01325;//bar
Pabs=1.2;//bar
sg_oil=0.8;
sg_water=13.6;
sg_mercury=13.6;
rho_w=1000;//Kg.m^3
g=9.81;//gravity constant
deltaP=Pabs-Patm;//bar
deltaP=deltaP*10^5;//N/m^2
//deltaP=rho_o*g*h_o
rho_o=sg_oil*rho_w;//kg/m^3
h_o=deltaP/rho_o/g;//m
disp(h_o,"Height of fluid in oil manometer in meter : ");
h_w=deltaP/rho_w/g;//m
disp(h_w,"Height of fluid in water manometer in meter : ");
rho_m=sg_mercury*rho_w;//kg/m^3
h_m=deltaP/rho_m/g;//m
disp(h_m,"Height of fluid in mercury manometer in meter : ");
