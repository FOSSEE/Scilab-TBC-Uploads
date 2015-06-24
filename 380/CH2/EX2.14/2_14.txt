//Caption:Find the minimum length of magnet for maintaining max energy in air gap
//Exa:2.14
clc;
clear;
close;
u_o=4*%pi*10^-7;//permeablity of air
u_r=500;//permeablity of steel
l_g=1*10^-2;//length of air gap section (in meter)
A_g=10*10^-4;//cross-sectional area of air gap section (in meter^2)
A_m=10*10^-4;//cross-sectional area of magnet section (in meter^2)
A_s=10*10^-4;//cross-sectional area of steel sections (in meter^2)
l_s=50*10^-2;//length of steel section (in meter)
//Refer to fig:-2.29 (Demagnetization and energy-product curves of a magnet)
H_m=-144*10^3;//(in Ampere/meter)
B_m=0.23;//Magnetic flux density (in Tesla)
//refer to eqn:-2.55
l_m=(-1*100)*(((l_g*A_m)/(u_o*A_g))+((2*l_s*A_m)/(u_o*u_r*A_s)))*(B_m/H_m);// (in centimeter)
disp(l_m,'minimum length of magnet (in centimeter)=')