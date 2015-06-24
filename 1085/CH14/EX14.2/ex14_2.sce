//Exam:14.2
clc;
clear;
close;
R_Cu=1.56;//Resistivity of pure copper(in micro-ohm-cm)
R_CuNi = 4.06;//Resistivity of Cu containing two atomic percent (in micro-ohm-cm)
R_Ni=(R_CuNi-R_Cu)/2;//Increase in resistivity due to one atomic % Ni
R_CuAg= 1.7;//resistivity of copper, containing one atomic percent silver (in micro-ohm-cm)
R_Ag=R_CuAg-R_Cu;//Increase in resistivity due to one atomic % Ag
R_CuNiAg=R_Cu+R_Ni+3*R_Ag;//Resistivity of copper alloy containing one atomic percent Ni and 3 atomic percent Ag
disp(R_CuNiAg,'Resistivity of copper alloy containing one atomic percent Ni and 3 atomic percent Ag(in micro-ohm-cm)=')