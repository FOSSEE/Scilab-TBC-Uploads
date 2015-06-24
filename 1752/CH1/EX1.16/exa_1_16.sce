//Exa 1.16
clc;
clear;
close
// given data
E=500;//Absorb solar energy in W/m^2
epsilon= 0.9;
T_s= 280;// in K
T_infinite=300;// in K
h_c=20;// in W/m^2degree C
T_sky=280;// in K
sigma=5.67*10^-8;
// Formula E= h_c*(T_p-T_infinite)+epsilon*sigma*(T_P^4-T_s^4)
// On simplication T_P= 340.6-0.255*T-p^4
T_p= 315.5;// in K
disp(T_p,"Equilibrium Temperature of the plate in K")
