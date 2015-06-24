//Caption:Find the number of conductors
//Exa:2.3
clc;
clear;
close;
P=8;//no. of poles
A=8;
Phy=40*10^-3;//flux in weber
N=500;//speed in rpm
E_g=250;//no-load voltage in volts
Z=(E_g*60*A)/(P*N*Phy);
disp(Z,'Number of conductors=')