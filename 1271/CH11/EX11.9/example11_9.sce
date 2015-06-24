clc 
// Given that
E = 2 // kinetic energy of electron in Mev
// Sample Problem 9 on page no. 11.20
printf("\n # PROBLEM 9 # \n")
printf(" Standard formula used \n")
printf(" m = m_0/((1-v^2/c^2)^1/2) \n  KE = m*c^2 - m_0*c^2 \n")
v = 3e8 * sqrt(1 - (1 / (1 + (1.6e-19 * 2e6) / (9.1e-31 * 3e8^2)))^2)
m = (9.1e-31) / sqrt(1 - (v / 3e8)^2)
printf("\n Speed of electron is %f c.\n Mass of electron is %e kg.",v/3e8,m)
