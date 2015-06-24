clc 
// Given that
m_p = 1.6e-27 // mass of proton in kg
m_e = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
// Sample Problem 28 on page no. 54
printf("\n # PROBLEM 28 # \n")
printf(" Standard formula used \n")
printf("\n m = m_0/sqrt(1-(v/c)^2) \n")
v = c* sqrt(1-(m_e/m_p)^2) // velocity of moving electron in m/sec

printf("\n Velocity of moving electron is  %e m/sec. ",v) 
// But real answer is 2.99e8 m/sec

