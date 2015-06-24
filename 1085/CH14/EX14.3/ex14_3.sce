//Exam:14.3
clc;
clear;
close;
R_Cu=1.8*10^(-8);//resistivity of pure copper at room temperature 
R_CuNi=7*10^(-8);//resistivity of Cu 4% Ni alloy at room temperature 
R_Ni=(R_CuNi-R_Cu)/4;//resistivity due to Impurity scattering per % of Ni
disp(R_Ni,'resistivity due to impurity scattering per percent of Ni in the Cu lattice(in ohm-meter)=')