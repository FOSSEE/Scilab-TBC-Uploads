// Exa 8.4
clc;
clear;
close;
// Given data
T_r = 2.912;// temp. rise in degree C
C_c = 0.058;//cooling correction in degree C
theta = T_r + C_c;// in degree C
HyCon= 14/100;// Hydrogen content
C_P = 4.1868;// in J/gm-K
Cc = 16750;//calorific value of cotton in J/gm
m_w = 1400;// in gm
m_c = 500;// in gm
m = m_w+m_c;// in gm
m1 = 0.005;//mass of cotton in gm
m2 = 0.579;//mass of oil in gm
Qw = m*C_P*theta ;// in J
H1= m1*Cc;// heat given out by combustion of cotton in J
Qin= Qw-H1;// in J
C= Qin/m2;// J/gm or kJ/kg
LCV= C-2442*9*HyCon;// in J/gm or kJ/kg
disp(C,"Higher Calorific value of the fuel in J/gm or kJ/kg is :")
disp(LCV,"Lower Calorific value of the fuel in J/gm or kJ/kg is :")

