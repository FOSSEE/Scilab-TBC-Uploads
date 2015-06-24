// Exa 9.14
clc;
clear;
close;
format('v',6)
// Given data
Rating = 40*10^3;// in VA
Pi = 400;// in W
Pcu_f1  = 800;// in W
phi= acosd(0.9);// in °
Eta_f1 = ((Rating*cosd(phi))/( (Rating*cosd(phi)) + Pi + Pcu_f1 ))*100;// in %
disp(Eta_f1,"Full load efficiency in % is");
// percentage of the full load
Eta_max = Rating*sqrt( Pi/Pcu_f1);// in KVA
Eta_max = Eta_max/Rating*100;// in %
disp(Eta_max,"The percentage of the full load in % is");
