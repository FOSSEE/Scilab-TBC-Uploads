// Calculate energy difference
clc
n_x1 = 1 // atomic level
n_y1 = 1// atomic level
n_z1 = 1// atomic level
n_x2 = 2// atomic level
L = 10 // lattice parameter in mm
h = 6.626e-34 // plank constant
m_e = 9.109e-31 // mass of electron in kg
printf("\n Example 14.1")
E1 = h^2*(n_x1^2+n_y1^2+n_z1^2)/(8*m_e*(L*1e-3)^2)
E2 = h^2*(n_x2^2+n_y1^2+n_z1^2)/(8*m_e*(L*1e-3)^2)
E = E2-E1 // energy difference 
printf("\n Energy difference is %.2e J ",E)
