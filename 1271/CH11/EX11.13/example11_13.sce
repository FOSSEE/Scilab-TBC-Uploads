clc 
// Given that
r = 11 // ratio of mass of particle to the rest mass of electron
// Sample Problem 13 on page no. 11.22
printf("\n # PROBLEM 13 # \n")
printf(" Standard formula used \n")
printf(" m = m_0/((1-v^2/c^2)^1/2) \n KE = (m-m_0)*c^2  \n ")
KE = (r - 1) * 9.1e-31 * 3e8^2 / (1.6e-19)
m = 3e8 * sqrt(1 - (1 / r)^2) * 9.1e-31 * 11
printf("\n Kinetic energy of electron is %f MeV.\n Momentum of particle is %e N-sec.",KE/1e6,m)
