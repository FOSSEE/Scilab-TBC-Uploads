clc 
// Given that
E = 1.5 // kinetic energy of electron in Mev
// Sample Problem 19 on page no. 11.25
printf("\n # PROBLEM 19 # \n")
printf(" Standard formula used \n")
printf(" m = m_0/((1-v^2/c^2)^1/2) \n KE = (m-m_0)*c^2 \n")
v = 3e8 * sqrt(1 - (1 / (1 + (1.6e-19 * 2e6) / (9.1e-31 * 3e8^2)))^2)
m = (E * 1.6e-13 / (3e8)^2) + 9.1e-31
printf("\n Speed of electron is %e meter/sec.\n Mass of electron is %e kg.",v,m)
