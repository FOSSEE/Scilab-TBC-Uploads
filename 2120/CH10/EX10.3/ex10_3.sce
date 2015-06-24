// Exa 10.3
clc;
clear;
close;
// Given data
phi_s = 6.583;
phi_w = 1.091;
phi_s1 = 6.504;
C_p = 2.25;
T_sat =179.9;// in °C
T_sat = T_sat + 273;// in K
T_sup = T_sat + 50;// in K
x2 = (phi_s - phi_w)/phi_s1;
H1 = 2776.2; // in kJ/kg
H_w2 = 340.6;// in kJ/kg
L2 = 2305;
H2 = H_w2 + (x2 * L2);// in kJ/kg
Eta_rankine = (H1 - H2)/(H1 - H_w2)*100;// in %
disp(Eta_rankine,"Rankine efficiency in % is");
phi_w1 = 2.138;
x1 = 0.87;
phi_s1 = 4.445;
phi_w2 = 1.091;
phi_s2 = 6.504;
x2 = (phi_w1 + (x1 * phi_s1) - phi_w2) / phi_s2;
H1 = 762.6 + (x1 * 2013.6);// in kJ/kg
H2 = 340.6 + (x2 * 2305);// in kJ/kg
Eta_rankine1 = (H1 - H2) / (H1 - H_w2)*100;// in %
PerDropInRankine= (Eta_rankine - Eta_rankine1)/Eta_rankine * 100;// in %
disp(PerDropInRankine,"Percentage drop in Rankine efficiency in % is : ");
phi_s1 = 6.583;
phi_w1 = 1.091;
phi_s2 = 6.504;
x2 = (phi_s1 + C_p * log(T_sup/T_sat) - phi_w1)/phi_s2;
H_s1 = 2776.2;
H1 = H_s1 + C_p * (T_sup - T_sat);// in kJ/kg
H2 = 340.6 + (0.88 * 2305);// in kJ/kg
H_w2 = 340.6;
Eta_rankine2 = (H1 - H2) / (H1 - H_w2);
Eta_rankine2 = Eta_rankine2 * 10^2;// in percentage
PerIncInRank = ((Eta_rankine2 - Eta_rankine)/Eta_rankine2) * 100;// in percentage
disp(PerIncInRank,"Percentage increase in rankine efficiency in % is :");
 

