//Exa 10.4
clc;
clear;
close;
// Given data
H2 = 2776.2;// in kJ/kg
p1 = 10;// in bar
p_2 = 1;// in bar
p_3 = 0.25;// in bar
p_4 = p_3;// in bar
// w = (H2 - H_2) + ((p_2 - p_3) * v_2);// work done in kJ/kg
phi_2 = 6.583;
phi_d2 = 1.303;
L = 6.057;
x_2 = (phi_2 - phi_d2) / L;
H2_desh = 417.5 + (x_2* 2257.9);// in kJ/kg
v_s = 1.694;
v_2 = x_2 * v_s;// in m^3 per kg
w = (H2 - H2_desh) + ((p_2 - p_3) * v_2);// in kJ/kg
H4 = 282.7;// in kJ/kg
H_w4 =H4;// in kJ/kg
HeatSupplied = H2 - H4;// kJ/kg
Eta_modifiedRankine = w / HeatSupplied*100;// in %
disp(Eta_modifiedRankine,"Thermal effienciency of the cycle in % is : ");
HeatRemoved = HeatSupplied - w;// in kJ/kg
disp(HeatRemoved,"Heat removed in condenser in kJ/kg is : ");
