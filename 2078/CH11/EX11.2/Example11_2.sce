//Exa 11.2
clc;
clear;
close;
//Given data :
rho=5*10^14*10^-2;//ohm-m
l=5*1000;//m
r1=2.5;//m
r2=r1+1;//m
R_ins=rho/(2*%pi*l)*log(r2/r1);//ohm
disp(R_ins/10^6,"Insulation resistance of cable(Mohm) :");
