//Exa 11.3
clc;
clear;
close;
//Given data :
l=3000;//cm
d1=1.5;//cm
r1=d1/2;//cm
d2=5;//cm
r2=d2/2;//cm
R_INS=1800;//Mohm
rho=R_INS*10^6*(2*%pi*l)/log(r2/r1);//ohm-m
disp(rho,"Resistivity (ohm-m) :");
