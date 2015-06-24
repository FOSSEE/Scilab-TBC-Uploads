// Calculate density of MgO
clc
r_mg = 0.78 // radius of magnesium cation in angstrom
r_o = 1.32 // radius of oxygen anion in angstrom
n = 4 // effective number of unit cell
m_o = 16 // mass of oxygen
m_mg = 24.3 // mass of magnesium
printf("\n Example 5.6")
a = 2*(r_mg+r_o)// lattice parameter
d = (m_o+m_mg)*1.66e-27*n/(a*1e-10)^3// density 
printf("\n Density of MgO is %d Kg/m^3",d) // answer is 3610 kg/m^3
printf("\n Density of MgO is %0.2f g/cm^3",d/1000)
