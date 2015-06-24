clc 
// Given that
m_0 = 9.11e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
KE = 1e5 // kinetic energy of electron in volts
E_rest = 512000 // rest mass energy of electron in eV
// Sample Problem 34 on page no. 60
printf("\n # PROBLEM 34 # \n")
printf(" Standard formula used \n")
printf("\n KE = m*v^2 \n E_total = KE+E_rest \n")
v_c = sqrt(2*KE*1.6e-19/m_0) // classical velocity of electron
E_total = KE + E_rest // energy of a moving electron
v_r = c * sqrt (1-(E_rest/E_total)^2)// relativistic velocity of electron 
printf("\n Classical velocity of electron is %e m/sec \n Relativistic velocity of electron is %e m/sec.",v_c, v_r)
