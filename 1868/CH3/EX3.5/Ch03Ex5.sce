// Scilab code Ex3.5: Pg 85 (2005)
clc; clear;
e = 1.6e-19;     // Electric charge, C
V_s = 4.3;    // Stopping potential, V
K_max = e*V_s;   // Maximum kinetic energy attained by photoelectrons, J
m_e = 9.11e-31   // Mass of electron, kg
// Since K.E = eV_s = 0.5m_e(v_max^2), therefore
v_max = sqrt((2*K_max)/m_e);    // Maximum velocity attained by photoelectron, m/s
printf("\nMaximum velocity attained by photoelectron = %3.1fe+06 m/s", v_max*1e-06);

// Result
// Maximum velocity attained by photoelectron = 1.2e+06 m/s