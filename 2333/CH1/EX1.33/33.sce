clc 
// Given that
m_0 = 9e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
KE = 1e6 // kinetic energy of electron in volts
// Sample Problem 33 on page no. 59
printf("\n # PROBLEM 33 # \n")
printf(" Standard formula used \n")
printf("\n E = m*c^2 \n")
v = c* sqrt(1-(1/(1+KE*1.6e-19/(m_0*c^2)))^2) // velocity of electron in m/sec
printf("\n Velocity of electron is %e m/sec. ",v)

