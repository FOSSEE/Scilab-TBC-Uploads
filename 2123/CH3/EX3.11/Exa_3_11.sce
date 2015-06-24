//Example No. 3.11
clc;
clear;
close;
format('v',6);

//Given Data : 
//T=0.6+1.9*omega_m
//TL=2.8*sqrt(omega_m)

//Solution : 
P=[3.61 -5.56 0.36];//Polynomial for omega_m calculated by equating T=TL
omega_m=roots(P);//rad/sec
disp(omega_m(2),"Operating speed in rad/sec at which system has steady state stability : ");
