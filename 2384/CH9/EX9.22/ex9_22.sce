// Exa 9.22
clc;
clear;
close;
format('v',7)
// Given data
VA = 100*10^3;// in VA
Eta_max = 98.40/100;// in %
Eta_max1 = 90/100;// in %
phi= acosd(1);// in °
//Eta_max = (Eta_max1*VA*cosd(phi)/(Eta_max1*VA*cosd(phi) + 2*Pi);
Pi = (Eta_max1*VA*cosd(phi)/Eta_max - Eta_max1*VA*cosd(phi))/2;// in W
Pcu = Pi;// in W
n = 0.9;
// Pcu_fl/Pcu = (VA/(0.9*VA) )^2;
Pcu_fl = Pcu*(VA/(0.9*VA) )^2;// in W
Eta_fl = ( (VA*cosd(phi))/( (VA*cosd(phi)) + Pi + Pcu_fl ) )*100;// in %
disp(Eta_fl,"The efficiency of a transformer in % is");
