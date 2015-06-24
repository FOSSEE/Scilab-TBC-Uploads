// Example 2.24
clc;
clear;
close;
// Given data
H2= 0.50;//volume of H2 in m^3
CH4= 0.19;// in m^3
CO= 0.18;// in m^3
C2H4= 0.02;// in m^3
CO2= 0.05;// in m^3
N2= 0.06;// in m^3
P= 100;// pressure of mixture in kN/m^2
mm_CO2= 44;// molecular mass of CO2
mm_CO= 28;
mm_H2= 2;
mm_CH4= 16;
mm_C2H4= 28;
mm_N2= 28;
R= 8.3143;// Universal gas constant in kJ/kg-mol-K
R_H2= R/mm_H2;// gas constant for H2
R_CO2= R/mm_CO2;
R_CO= R/mm_CO;
R_C2H4= R/mm_C2H4;
R_CH4= R/mm_CH4;
R_N2= R/mm_N2;
M= mm_CO2*CO2+mm_H2*H2+mm_CH4*CH4+mm_CO*CO+mm_C2H4*C2H4+mm_N2*N2;// in kg
disp(M,"Apparent molecular mass of the gas in kg is : ")
mol_Vol= 22.4;//mole volume at NTP in m^3
density= M/mol_Vol;// in kg/m^3
disp(density,"Density of the mixture in kg/m^3 is : ")
mixture_G_constant= R/M;// in kJ/kg-K
disp(mixture_G_constant,"The mixture gas constant in kJ/kg-K is : ")
P_H2= P*H2;//partial pressure of H2 in kN/m^2
P_CH4= P*CH4;// in kN/m^2
P_CO= P*CO;// in kN/m^2
P_C2H4= P*C2H4;// in kN/m^2
P_CO2= P*CO2;// in kN/m^2
P_N2= P*N2;// in kN/m^2
disp(P_H2,"The partial pressure of H2 in kN/m^2")
disp(P_CH4,"The partial pressure of CH4 in kN/m^2")
disp(P_CO,"The partial pressure of CO in kN/m^2")
disp(P_C2H4,"The partial pressure of C2H4 in kN/m^2")
disp(P_CO2,"The partial pressure of CO2 in kN/m^2")
disp(P_N2,"The partial pressure of N2 in kN/m^2")



