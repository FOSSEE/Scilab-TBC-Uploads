//Chapter:1:Introduction to electrical Machines
//Caption:Find the emf induced in the coil
//Exa:1.9
clc;
clear;
close;
N=800;//No.of turns
Phy_1=2000*10^-6;//In Webers
Phy_2=1000*10^-6;//In Webers
t=0.1;//in seconds
e=N*(Phy_1-Phy_2)/t;
disp(e,'Emf induced in the coil (in volts)=')