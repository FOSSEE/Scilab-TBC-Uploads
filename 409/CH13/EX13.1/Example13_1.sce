clear;
clc;
// Example 13.1
printf('Example 13.1\n\n');
//Page No. 404
// Solution

m_CO2 = 40 ;// Mass of CO2-[kg]
mol_wt_CO2 = 44 ;// Molecular mass of 1kmol CO2 -[kg]
mol_V = 22.42 ;// Molar of ideal gas at standard condition-[cubic metre/kg mol]
V_CO2 = (m_CO2 * mol_V)/(mol_wt_CO2);// volume of CO2-[cubic metre]
 printf('Volume occupied by 40 kg CO2 at standard condition is  %.1f cubic metre.',V_CO2);