clc 
// Given that
m_0 = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
KE = 1.5e6 // kinetic energy in eV
// Sample Problem 31 on page no. 56
printf("\n # PROBLEM 31 # \n")
printf(" Standard formula used \n")
printf("\n E = m*c^2 \n")

m = m_0+ KE*1.6e-19/c^2 // mass of moving electron in kg

v = c * sqrt(1-(m_0/m)^2) // velocity of moving electron in m/sec
printf("\n Mass of moving electron is %e kg \n Velocity of moving electron is  %e m/sec. ",m,v)

