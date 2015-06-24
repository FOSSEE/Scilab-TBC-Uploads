// Exa 8.5
clc;
clear;
close;
// Given data
W_c = 500*10^-3;//water collected in kg
C_P = 4.1868;// in kJ/kg-K
T_o = 28.3;//outlet temp. in °C
T_i = 14;//inlet temp. in °C
P_bero= 785;// barometric pressure in mm
P_gas= P_bero+90/13.6;// in mm
T1=17+273;// gas temp. in K
T2= 15+273;// in K
theta = T_o-T_i;//temp. rise in °C
Qw = W_c * C_P*theta;// in kJ
Vgs= 2.8*10^-3;//volume of gas consumed  in m^3
E = Qw/Vgs;// in kJ
V1= P_gas/760*(T2/T1);// in m^3
CalorificValue= E/V1;// in kJ/standard m^3
disp(CalorificValue,"Calorific value in kJ/m^3 is : ")
