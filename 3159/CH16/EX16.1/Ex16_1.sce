// Calculate the net magnetic moment per iron atom in crystal
clc
a = 2.87 // lattice parameter in angstrom
n = 2 // number of atoms per unit cell
m = 1750 // Saturation magnetization in kAm^-1
mu = 9.273e-24 // bohr magneton 
printf("\n Example 16.1")
m_atom = m*1e3*(a*1e-10)^3 /n
mu_b = m_atom/mu

printf("\n Net magnetic moment per iron atom in crystal is %.3e Am^2",m_atom)
printf("\n In unit of mu_b, Net magnetic moment per iron atom in crystal is %.1f ",mu_b)

