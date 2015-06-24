clc

M_CO2=44;
M_H2=2;
M_N2=28;
M_CH4=16;
M_CO=28;

// Let volumetric analysis be denoted by V
V_CO=0.28;
V_H2=0.13;
V_CH4=0.04;
V_CO2=0.04;
V_N2=0.51;

Cp_CO=29.27; //kJ/mole K
Cp_H2=28.89; //kJ/mole K
Cp_CH4=35.8; //kJ/mole K
Cp_CO2=37.22; //kJ/mole K
Cp_N2=29.14; //kJ/mole K

R0=8.314; 

Cp=V_CO*Cp_CO + V_H2*Cp_H2 + V_CO2*Cp_CO2 + V_CH4*Cp_CH4 + V_N2*Cp_N2;
disp("Cp=")
disp(Cp)
disp("kJ/mole K")

Cv=Cp-R0;
disp("Cv=")
disp(Cv)
disp("kJ/mole K")

M=V_CO*M_CO + V_H2*M_H2 + V_CO2*M_CO2 + V_CH4*M_CH4 + V_N2*M_N2;

cp=Cp/M;
disp("cp=")
disp(cp)
disp("kJ/kg K")

cv=Cv/M;
disp("cv")
disp(cv)
disp("kJ/kg K")