// Scilab code Ex9.5: Pg.381-382 (2008)
clc; clear;
delta_E = 4.77e-04*1.6e-19;    // Energy difference, J
l = 0;    // Rotational level
h_cross = 1.055e-34;    // Reduced plank's constant, J-s
I = h_cross^2/delta_E;    // Moment of inertia, ev-s^2
m_1 = 12;    // Mass of C, u
m_2 = 16;    // Mass of O, u
mu = m_1*m_2/(m_1+m_2)*1.66e-27;    // Reduced mass of CO, kg
r_o = sqrt(I/mu);    // Equilibrium separation, m
printf("\nThe equilibrium separation or bond length of CO molecule = %5.3f nm", r_o/1e-9);

// Result
// The equilibrium separation or bond length of CO molecule = 0.113 nm 