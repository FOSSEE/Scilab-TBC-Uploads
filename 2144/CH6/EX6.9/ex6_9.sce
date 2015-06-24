// Exa 6.9
clc;
clear;
close;
// Given data
P = 12*10^2;// in kN/m^2
h_f = 798.1;// in kJ/kg
h_fg = 1984.5;// in kJ/kg
x = 0.8;
H_wet = h_f + (x*h_fg);// in kJ/kg
v_f = 0.001;// in m^3
v_g = 0.1684;// in m^3
V_wet = ((1-x)*v_f) + (x*v_g);// in m^3
En = H_wet/V_wet;// kJ/m^3
disp(En,"The enthalpy in kJ/m^3 is");
U_wet = H_wet - ( V_wet * P );// in kJ
U_wet1 = (U_wet/V_wet);// in kJ/m^3
disp(U_wet1,"Internal energy in kJ/m^3 is");

// Note: There is calculation error to find the value of V_wet.( the correct value of V_wet is 0.13492 not 0.1308), so there is some difference between the output of coding and the answer of the book


