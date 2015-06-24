//clc()
P = 10;//bar
T = 300;//K
V = 150;//L
P1 = 1.01325;//bar ( \suffix 1 represents at STD)
T1 = 273.15;//K
V2 = T1 * P * V /(T * P1);//m^3
V1 = 22.4143;//m^3/mol
N = V2 / V1;//mol
MO2 = 32;
m = N * MO2/1000;
disp("kg",m,"Mass of oxygen in the cylinder = ")