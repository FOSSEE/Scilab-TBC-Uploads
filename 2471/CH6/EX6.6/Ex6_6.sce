clear ;
clc;
// Example 6.6
printf('Example 6.6\n\n');
printf('Page No. 149\n\n');

// given
F = 1;// Fuel feed in kg
C = 0.86;// Mass of Carbon in kg
H2 = 0.05;// Mass of Hydrogen in kg
S = 0.01;// Mass of Sulphur in kg
O2 = 0.08;// Mass of Oxygen in kg

w_C = 12; // mol. weight of C
w_H2 = 2; //mol. weight of H2
w_O2 = 32; // mol. weight of O2
w_S = 32; //mol. weight of S
//Basis- Per kg of fuel
mol_C = C / w_C;// kmol of C
mol_H2 = H2 /w_H2;//kmol of H2
mol_O2 = O2 /w_O2;//kmol of O2
mol_S = S /w_S;//kmol of S
//By kmol of product
CO2 = mol_C*1;// CO2 formed by the reaction C + O2 -> CO2
H2O = mol_H2*1;// H2O formed by the reaction H2 + (1/2)O2 -> H2O
SO2 = mol_S*1;// SO2 formed by the reaction S + O2 -> SO2
Pdt = CO2 + H2O + SO2;// Total kmol of combustion products in kmol
//Calculation of excess air
C_req = mol_C*1;//O2 required by entering C given by reaction C+O2->CO2 in kmol
H_req = mol_H2*0.5;//O2 required by entering H2 given by reaction H2+(1/2)O2->H20 in kmol
S_req = mol_S*1;//O2 required by entering S given by reaction S+O2->SO2 in kmol
O2_req = (C_req + H_req + S_req) - mol_O2//  Total number of kmol of O2 required per kg of fuel in kmol

N2 = (O2_req*79)/21;// in kmol (considering air consists of 79% N2 and 21% O2 by moles)
Wet_pdts = Pdt + N2;// Wet combustion products in kmol

//Considering air as an ideal gas,calculating volume of air by ideal gas equation-P*V = n*R*T
R = 8310;//Universal gas constant in J/kmol-K
T = (273+0);// in K
P = 1.013*10^5;// in N/m^2
n_wet = Wet_pdts;// in kmol 
V_wet = (n_wet*R*T)/P;// In m^3
n_dry = n_wet - H2O;//in kmol
V_dry = (n_dry*R*T)/P;// In m^3

printf('Volume of wet flue gas is %3.2f m^3 \n',V_wet)
printf('Volume of dry flue gas is %3.2f m^3',V_dry)





