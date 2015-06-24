//Caption:Find the (1)average emf induced in the coil (2)current through the coil
//Exa:1.11
clc;
clear;
close;
N=300;//No.of turns
R=60;//resitance in ohms
Phy_1=2*10^-3;//In Webers
Phy_2=3*10^-3;//In Webers
t=0.2;//in seconds
e=N*(Phy_2-Phy_1)/t;
disp(e,'(1) Average emf induced in the coil (in volts)=');
i=e/R;
disp(i,'(2) Current through the coil (in Amperes)=')