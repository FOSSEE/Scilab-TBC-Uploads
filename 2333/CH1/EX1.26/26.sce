clc 
// Given that
m_0 = 9.1e-31 // let mass of electron in kg
m = 11*m_0 // mass of moving electron 
c = 3e8 // speed of light in m/sec
// Sample Problem 26 on page no. 53
printf("\n # PROBLEM 26 # \n")
printf(" Standard formula used \n")
printf("\n m = m_0/((1-v^2/c^2)^1/2) \n")
v= c*sqrt(1-(m_0/m)^2) // velocity of moving electron in m/sec
p = m*v // momentum of moving particle in kgm/sec
E = m*c^2 // total energy of particle in joule
KE = (m - m_0)*c^2/1.6e-19// kinetic energy in eV
printf("\n  momentum of particle is %e kg m /sec \n Kinetic energy of particle is %e eV.",p,KE)
