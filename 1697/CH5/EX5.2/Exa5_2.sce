//Exa 5.2
clc;
clear;
close;
//Given data :
f=20;//in MHz
N=15;//No. of turns
A=2;//in m^2
Vrms=200;//in uV
theta=acos(1);;//in radian
mu_o=4*%pi*10^-7;//in H/m
//Formula : Vm=2*%pi*f*mu_o*H*A*N
Vm=Vrms*sqrt(2);//in uV
H=(Vm*10^-6)/(2*%pi*f*10^6*mu_o*A*N);//in A/m
disp(H*1000,"Peak Value of magnetic feld intensity in mA/m : ");
//Note : Answer in the book is wrong.