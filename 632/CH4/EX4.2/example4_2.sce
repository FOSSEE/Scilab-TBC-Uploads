//clc()
T = 350;//K
P = 1;//bar
V1 = 22.4143 * 10^-3;//m^3 (suffix 1 represents at STD)
P1 = 1.01325;//bar
T1 = 273.15;//K
V = P1 * V1 * T/(T1 * P);
disp("m^3/mol",V,"Molar volume =")