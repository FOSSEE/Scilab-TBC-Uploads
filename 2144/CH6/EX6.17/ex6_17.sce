// Exa 6.17
clc;
clear;
close;
// Given data
V1 = 0.4;// volume of dry saturated steam
P1 = 1.5;// in MN/m^2
disp("Part (i) :  For Isothermal operation :")
Vs = 0.1318;// specific volume of dry steam
m = V1/Vs;// quantity of steam present in the vessel in kg
h_f1= 844.6;// in kJ/kg
x1= 0.5;// dryness fraction
h_fg1= 1945.2;// in kJ/kg
Specific_Enth= h_f1+x1*h_fg1;// in kJ/kg
En= Specific_Enth*m;// kJ
disp(En,"Enthalpy of the fluid in kJ is : ")
HeatLost= m*(1-x1)*h_fg1;// in kJ
disp(HeatLost,"The loss of heat during the constant temperature process in kJ is : ");
disp("Part (ii) : For Hyperbolic operation :")
h_f2= 1008.3;// in kJ/kg
h_fg2= 1794;// in kJ/kg
Vs= 0.0659;// Specific volume after compression in m^3/kg
Vs1= 0.0666;// Specific volume of dry saturated steam in m^3/kg
x2=Vs/Vs1;
H_wet= h_f2+x2*h_fg2;// in kJ/kg
H= m*H_wet;// in kJ
disp(H,"Enthalpy of the fluid in kJ is :")

