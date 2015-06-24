// Exa 5.4
clc;
clear;
close;
// Given data
CalorificValue= 14.887*10^3;// in kJ/m^3
Vs= 1;// in m^3 (assumed)
Vc= 0.25*Vs;// clearance volume in m^3
V= Vs+Vc;// in m^3
Ratio= V/Vc;// ratio of compression
Gamma= 1.4;
r= 5;
Eta=1-1/(r^(Gamma-1)) ;
Eta= Eta*100;// in %
disp(Eta,"Air standard efficiency in % is :")
Eta_Th= Eta*60/100;// thermal efficiency
disp(Eta_Th,"Thermal efficiency in % is : ")
Eta_br_th= Eta_Th*75/100;// break thermal efficiency
disp(Eta_br_th,"Brake thermal efficiency in % is :")
E= 3600;// energy equivalent of brake in kJ
GasConsumption= E/CalorificValue;// in m^3
disp(GasConsumption,"The consumption of gas in m^3 is :")
