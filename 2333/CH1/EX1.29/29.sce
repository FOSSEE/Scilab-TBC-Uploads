clc 
// Given that
m_0 = 1 // let rest mass of a particle be unity
c = 3e8 // speed of light in m/sec
rest_mass_energy = m_0*c^2 // rest mass energy of particle 
KE = 3*rest_mass_energy // kinetic energy of particle
// Sample Problem 29 on page no. 55
printf("\n # PROBLEM 29 # \n")
printf(" Standard formula used \n")
printf("\n E = m*c^2 \n")
E_total = KE+ rest_mass_energy // total energy of particle 
v = c * sqrt(1-(rest_mass_energy/E_total)^2) // velocity of moving electron in m/sec

printf("\n Velocity of moving electron is  %e m/sec. ",v)
