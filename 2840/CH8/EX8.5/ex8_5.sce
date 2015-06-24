clc;
clear all;
rhoC = 1.65*1e-8; // Electrical resistivity of cpooer in ohm meter
rhoN = 14*1e-8; // Electrical resistivity of Nickel in ohm meter
T = 300; // Room temperature in kelvin
KCu =(2.45*1e-8*T)/rhoC;//Thermal conductivity of Cu
KNi =2.45*1e-8*T/rhoN;//Thermal conductivity of Ni
disp('W/(m*degree)',KCu,'Thermal conductivity of Cu is ');
disp('W/(m*degree)',KNi,'Thermal conductivity of Ni is ');
//slight variation in ans than book.. checked in calculator also(Mistake in Textbbok)
