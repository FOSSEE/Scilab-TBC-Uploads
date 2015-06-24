clc 
// Given that
m_0 = 1 // let mass of the particle in kg
c = 3e8 // speed of light in m/sec
v = c/sqrt(2) // velocity of moving particle in m/sec

// Sample Problem 25 on page no. 53
printf("\n # PROBLEM 25 # \n")
printf(" Standard formula used \n")
printf("\n m = m_0/((1-v^2/c^2)^1/2) \n")
m = m_0/sqrt(1-(v/c)^2) // mass of moving particle in kg

p = m*v // momentum of moving particle in kgm/sec
E = m*c^2 // total energy of particle in joule
KE = E - m_0*c^2 // kinetic energy in joule
printf("\n Mass of particle is %fm_0 \n momentum of particle is %f*m_0*c \n Kinetic energy of particle is %f*m_0*c^2",m,p/c,KE/c^2)

