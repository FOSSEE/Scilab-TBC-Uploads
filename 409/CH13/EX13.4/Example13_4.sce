clear ;
clc;
// Example 13.4
printf('Example 13.4\n\n');
//Page No. 408 
// Solution

mol_wt_N2 = 28 ;// Molecular mass of 1 kg mol N2 -[kg]
mol_V = 22.42 ;// Molar of ideal gas at standard condition-[cubic metre/kg mol]
Tc =  27 ;// Temperature-[degree C]
T = Tc + 273 ;//Temperature-[K]
P = 100 ;//Pressure-[kPa]

//Standard condition
Ps = 101.3 ;// Pressure -[kPa]
Ts = 273 ;//Temperature-[K]

V = (T *  Ps *  mol_V)/(Ts *  P) ;// Volume occupied by N2-[cubic metre]
D_N2 = mol_wt_N2/V ;// Density of N2 at given condition-[kg/cubic metre]
 printf(' Density of N2 at given condition is  %.3f kg/cubic metre.',D_N2);