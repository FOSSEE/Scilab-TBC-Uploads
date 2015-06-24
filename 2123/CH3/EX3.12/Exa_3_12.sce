//Example No. 3.12
clc;
clear;
close;
format('v',6);

//Given Data : 
//T=15-0.5*omega_m
//TL=0.5*omega_m^2

//Solution : 
P=[1 1 -30];//Polynomial for omega_m calculated by equating T=TL
omega_m=roots(P);//rad/sec
disp(omega_m(2),"Operating speed in rad/sec at which system has steady state stability : ");
