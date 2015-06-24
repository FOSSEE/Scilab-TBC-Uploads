// Exa 9.9
clc;
clear;
close;
format('v',7)
// Given data
Rating = 250*10^3;// in VA
Pi = 1.8;// in kW
Pi = Pi * 10^3;// in W
Pcu_f1 = 2000;// in W
phi= acosd(0.8);// in °
Eta = ((Rating*cosd(phi))/((Rating*cosd(phi))+Pi+Pcu_f1))*100;// %Eta in %
disp(Eta,"The efficiency at full load in % is");
// The maximum efficiency 
Eta_max = Rating * sqrt(Pi/Pcu_f1 );// in VA
Eta_max = Eta_max *10^-3;// in kVA
disp(Eta_max,"The maximum efficiency in kVA is");
Eta_max = Eta_max *10^3;// in VA
Pcu = Pi;// in W
Eta_max1 = ((Eta_max*cosd(phi))/((Eta_max*cosd(phi)) + Pi+Pcu ))*100;// in %
disp(Eta_max1,"The maximum efficiency in % is");
