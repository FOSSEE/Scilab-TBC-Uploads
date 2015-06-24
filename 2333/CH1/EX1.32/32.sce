clc 
// Given that
m_0 = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
v1 = 0.6*c // initial velocity of electron in m/sec
v2 = 0.8*c//final velocity of electron in m/sec 
E_rest = 0.511 // rest mass energy of electron in MeV
// Sample Problem 32 on page no. 57
printf("\n # PROBLEM 32 # \n")
printf(" Standard formula used \n")
printf("\n E = m*c^2 \n")
KE1 = E_rest*1e6*((1-(v1/c)^2)^(-1/2) -1)// initial kinetic energy of particle
KE2 = E_rest*1e6*((1-(v2/c)^2)^(-0.5) -1)// final kinetic energy of particle

del_KE = (KE2 -KE1)*1.6e-19 // change in kinetic energy
printf("\n Amount of work to be done is equal to %e J. ",del_KE)

