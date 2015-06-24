// Exa 6.27
clc;
clear;
close;
// Given data
P1 = 2.1;// in MN/m^2
P1= P1*10^3;//in kN/m^2
P2 = 0.7;// in MN/m^2
P2= P2*10^3;//in kN/m^2
V1 = 0.1281;// in m^3
x = 0.9;
n = 1.25;
h_f1= 920;// in kJ/kg
h_fg1= 1878.6;// in kJ/kg
h_f2= 697.0;// in kJ/kg
h_fg2= 2065.0;// in kJ/kg
V_wet1 = x * 0.0949;// in m^3/kg
m = V1/V_wet1;// in kg
disp(m,"Mass of steam in kg is");
V2 = V1*((P1/P2)^(1/n));//in m^3
del_W = (P1*V1-P2*V2)/(n-1);// in kJ
disp(del_W,"External work done in kJ is");
V_2 = V2/m;// in m^3/kg
x2 = V_2/0.273;
H1= h_f1+x*h_fg1;// in kJ/kg
U1= H1-P1*V_wet1;// in kJ/kg
H2= h_f2+x2*h_fg2;// in kJ/kg
U2= H2-P2*V_2;// in kJ/kg
del_E = m*(U2-U1);//in kJ
disp(del_E,"Change in internal energy in kJ is");
Q = del_W +del_E;// in kJ
disp(Q,"Heat exchange in kJ is");
disp("Heat is lost to the surroundings.")
