// Exa 9.16
clc;
clear;
close;
format('v',6)
// Given data
Rating = 10*10^3;// in VA
phi= acosd(0.8);// in °
V1 = 500;// in V
V2 = 250;// in V
Pi = 200;// in W
Pcu = 300;// in W
Isc = 30;// in A
I1 = Rating/V1;// in A
// Pcu/(Pcu(f1)) = (Isc^2)/(I1^2);
Pcu_f1 = Pcu * ((I1^2)/(Isc^2));// in W
// The efficiency at full load
Eta_f1 = Rating*cosd(phi)/(Rating*cosd(phi) + Pi + Pcu_f1)*100;// in %
disp(Eta_f1,"The full load efficiency in % is");
