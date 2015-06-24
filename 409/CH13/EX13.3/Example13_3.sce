clear ;
clc;
 //   Example 13.3
 printf('Example 13.3\n\n');
 //   Page No.406
 //   Solution

m_CO2 = 88 ;//   Mass of CO2-[lb]
mol_wt_CO2 = 44  ;//   Molecular mass of 1 lb mol CO2 -[lb]
mol_V = 359 ; //   Molar volume-[cubic feet]

 //  State 1-standard condition
P1 = 33.91 ; //   Pressure -[ft of water]
T1 = 273  ;//  Temperature-[K]

 //   State 2
P2 = 32.2  ;//   Pressure -[ft of water]
Tc = 15  ;//   Temperature-[degree C]
T2 = Tc+273  ;//  Temperature-[K]

 //   Use eqn. 13.2 to get final volume
V1 = (m_CO2 * mol_V) / (mol_wt_CO2);
V2 = (V1 * T2 * P1) / (T1 * P2);
 printf('The volume occupied 88 lb of CO2 at given condition is  %.0f cubic feet.',V2);