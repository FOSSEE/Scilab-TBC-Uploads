//Exa 3.10
clc;
clear;
close;
//Given data :
Dmat=0.15;//in ns/nm-km
lambda=0.9;//in um
deltaTau_s=1.5;//in nm
//part (a) 
//formula : deltaTmat/L=deltaTau_s*Dmat
deltaTmatBYL=deltaTau_s*Dmat;//in ns/Km
disp("Pulse dispersion per unit length of fibre is "+string(deltaTmatBYL)+" ns/Km");
//part (b)
L=15;//in Km 
//formula : deltaTmat=deltaTau_s*Dmat*L
deltaTmat=deltaTau_s*Dmat*L;//in ns
disp("Material dispersion per in a 15 Km length of fibre is "+string(deltaTmat)+" ns");