clear ;
clc;
// Example 13.5
printf('Example 13.5\n\n');
//Page No. 409 
// Solution

mol_wt_N2 = 28 ;// Molecular mass of 1 lb mol N2 -[lb]
mol_wt_air = 29 ;// Molecular mass of 1 lb mol air -[lb]
mol_V = 359 ;// Molar volume of ideal gas-[cubic feet]
//Given condition
Tf =  80 ;// Temperature-[degree F]
T = Tf + 460 ;//Temperature-[degree Rankine]
P = 745 ;//Pressure-[mm of Hg]

//Standard condition
Ps = 760 ;// Pressure -[mm of Hg]
Ts = 492 ;//Temperature-[degree Rankine]

D_air = (Ts *  P *  mol_wt_air)/(T *  Ps *  mol_V) ;// Density of air at given condition-[lb/cubic feet]
D_N2 = (Ts *  P *  mol_wt_N2)/(T *  Ps *  mol_V) ;// Density of N2 at given condition-[lb/cubic feet]
sg_N2 = D_N2/D_air ;// Specific gravity of N2 compared to air at given condition 
 printf(' Specific gravity of N2 compared to air at given condition  is  %.3f .',sg_N2);