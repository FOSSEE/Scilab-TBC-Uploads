clear ;
clc;
// Example 14.2
printf('Example 14.2\n\n');
//Page No. 444
// Solution 

//From appendix D
Tc = 154.4 ;//[K]
Pc1 = 49.7 ;// [atm]
Pc = 101.3 * Pc1;//[kPa]

T_O21 = -25 ;// Temperature-[degree C]
T_O2 =  273+T_O21;//Temperature -[K]
R = 8.134 ;// gas constant-[(cubic metre * kPa)/(kg mol * K)]
V_tank = 0.0284 ;// Volume of tank-[cubic metre]
mol_O2 = 32 ;// Kmol. wt. of O2-[kg]
m_O2 =  3.5 ;// Mass of liquid O2-[kg]
V_sp = V_tank * mol_O2/m_O2 ;// Specific molar volume-[m^3/kg]
Vc = R * Tc/Pc ;// [cubic metre/kg mol]
Vr = V_sp/Vc;
Tr = T_O2/Tc;

// Now use Vr and Tr to get Pr from Nelson and Obert chart ,Pr = 1.43
Pr = 1.43 ;// [kPa]
P_O2 = Pr * Pc ;// The pressure in the tank -[kPa]
printf('The pressure in the tank is %.2f  kPa.',P_O2);