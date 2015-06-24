// Exa 6.32
clc;
clear;
close;
// Given data
P1 = 15;// in bar
P2 = 0.15;// in bar
T_sat = 198.3;// in degree C
T_sat = T_sat + 273;// in K
h_fg1 = 1947;// in kJ/kg
h_fg2= 2369;// in kJ/kg
h_g1 = 845;// in kJ/kg
h_f2 = 232;// in kJ/kg
f_g2 = 7.985;// in kJ/kg-K
x1 = 0.8;
Phi_f1 = 2.315;// in kJ/kg-K
Phi_f2 = 0.772;// in kJ/kg-K
Phi1 = Phi_f1 + ((x1*h_fg1)/T_sat);// in kJ/kg-K
H1 = h_g1 + (x1*h_fg1);// in kJ/kg-K
Phi2 = Phi1;// in kJ/kg-K
x2 = (Phi1 - Phi_f2)/(f_g2 - Phi_f2);
H2 = h_f2 + (x2*h_fg2);// in kJ/kg
Eta = ((H1-H2)/(H1-h_f2))*100;// in %
disp("Part (i) When the steam supply is wet and dryness fraction is 0.8")
disp(Eta,"Rankine efficiency in % is");
delH = H1-H2;//theoretical work of steam in kJ/kg
W = delH*60/100;// in kJ/kg
Energy_Equivalent= 3600;// in kJ
Steam_C = Energy_Equivalent/W;// Steam consumption in kg
disp(Steam_C,"Steam consumption per kW-hr in kg is :")
disp("Part (ii) When the steam supply is dry and saturated")
H_1 = 2792;// in kJ/kg
Phi_g1 = 6.445;// in kJ/kg-K
x_2 = (Phi_g1-Phi_f2)/(f_g2-Phi_f2);
H_2 = h_f2 + (x_2*h_fg2);// in kJ/kg
Eta1 = (H_1-H_2)/(H_1-h_f2);
disp("Rankine efficiency is "+string(Eta1)+" or "+string(Eta1*100)+" %");
W1 = (H_1-H_2)*60/100;// in kJ/kg
Steam_C= Energy_Equivalent/W1;// in kg
disp(Steam_C,"Steam consumption per kW-hr in kg is :")
disp("Part (iii) When steam is superheated and  temperature is 300°C")
H_1 = 3039;// in kJ/kg
Phi_1 = 6.919;// in kJ/kg-K
x_2 = (Phi_1 - Phi_f2)/(f_g2-Phi_f2);
H_2 = h_f2 + (x_2 * h_fg2);// in kJ/kg
Eta = (H_1 - H_2)/(H_1-h_f2);
disp("Rankine efficiency is "+string(Eta)+" or "+string(Eta*100)+" %");
W2 = (H_1-H_2)*60/100;// in kJ/kg
Steam_C= Energy_Equivalent/W2;// in kg
disp(Steam_C,"Steam consumption per kW-hr in kg is :")
