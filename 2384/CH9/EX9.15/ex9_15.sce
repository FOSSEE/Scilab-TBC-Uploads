// Exa 9.15
clc;
clear;
close;
format('v',6)
// Given data
Rating = 8*10^3;// in VA
phi= acosd(0.8);// in °
V1 = 400;// in V
V2 = 100;// in V
f = 50;// in Hz
Pi = 60;// in W
Wo = Pi;// in W
Pcu = 100;// in W
// The full load efficiency 
Eta_f1 = ((Rating*cosd(phi))/((Rating*cosd(phi)) + Pi + Pcu))*100;// in %
disp(Eta_f1,"The full load efficiency in % is");
