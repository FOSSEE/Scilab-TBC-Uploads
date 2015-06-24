clear ;
clc;
// Example 6.4
printf('Example 6.4\n\n');
printf('Page No. 147\n\n');

// given
F = 1;// Fuel feed required in kg
//By ultimate analysis of feed
C = 0.86;// Carbon percentage - [%]
H2 = 0.05;// Hydrogen percentage - [%]
S = 0.001;// Sulphur percentage - [%]
O2 = 0.08;// Oxygen percentage - [%]

w_C = 12; // mol. weight of C
w_H2 = 2; //mol. weight of H2
w_O2 = 32; // mol. weight of O2
w_S = 32; //mol. weight of S
//Basis- Per kg of fuel
mol_C = C / w_C;// kmol of C
mol_H2 = H2 /w_H2;//kmol of H2
mol_O2 = O2 /w_O2;//kmol of O2
mol_S = S /w_S;//kmol of S
//Calculation of excess air
C_req = mol_C*1;//O2 required by entering C given by reaction C+O2->CO2 in kmol
H_req = mol_H2*0.5;//O2 required by entering H2 given by reaction H2+(1/2)O2->H20 in kmol
S_req = mol_S*1;//O2 required by entering S given by reaction S+O2->SO2 in kmol
O2_req = (C_req + H_req + S_req) - mol_O2;// in kmol
printf('Total number of kmol of O2 required per kg of fuel is %3.3f kmol \n',O2_req)
m_O2 = O2_req*w_O2;// Mass of O2 required per kg of fuel
printf('Mass of O2 required per kg of fuel is %3.1f kg \n\n',m_O2)
//Calculation of air
m_air = m_O2/0.232;// in kg
printf('Mass of air required per kg of fuel is %3.1f kg \n',m_air')
//Considering air as an ideal gas,calculating volume of air by ideal gas equation-P*V = n*R*T
R = 8310;//Universal gas constant in J/kmol-K
T = (273+20);// in K
P = 1.013*10^5;// in N/m^2
n = 1;// 1 kmol of air
V_kmol = (n*R*T)/P;// In m^3/kmol
M_air = 29;// Mol. weight of air
V_kg = V_kmol/M_air;// in m^3/kg
V_air = m_air*V_kg;// in m^3
printf('Volume of air required is %3.1f m^3 \n',V_air')
//Deviation in answer is due to some approximation in calculation in the book




