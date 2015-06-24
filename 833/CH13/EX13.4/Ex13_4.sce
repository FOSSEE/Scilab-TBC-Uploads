//Caption:Find coil span factor
//Exa:13.4
clc;
clear;
close;
s=9//Number of slots
theta=180/s
k_p=cosd(theta/2)
disp(k_p,'Coil span factor=')