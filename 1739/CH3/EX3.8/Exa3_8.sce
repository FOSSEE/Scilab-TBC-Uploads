//Exa 3.8
clc;
clear;
close;
//Given data :
deltaTau_s=2;//in nm
L=30;//in Km
Dmat=20;//in ps/nm-km
//formula : deltaT_mat=deltaTau_s*L*[(lambda/c)*(d^2*n/d*lambda^2)]
//formula : deltaT_mat=deltaTau_s*L*Dmat
deltaT_mat=deltaTau_s*L*Dmat;//in ps
deltaT_mat=deltaT_mat*10^-3;//in ns
disp(deltaT_mat,"Pulse broadning due to material dispersion in ns : ");