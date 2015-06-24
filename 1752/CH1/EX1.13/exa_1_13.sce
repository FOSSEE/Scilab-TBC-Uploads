//Exa 1.13
clc;
clear;
close
// given data
k='2.0+0.0005*T';// in W/m-k
A=3*5;//in square meter

T1=150;// in degree C
T2=50;// in degree C
L=20*10^-2;// thickness in m^2
// Formula q= -k*A*dt/dx
q=-A*(integrate(k,'T',T1,T2))/(integrate('1','x',0,L));// in Watt
q=q*10^-3;//in kW
disp(q,"Rate of heat transfer in kW is : ");

