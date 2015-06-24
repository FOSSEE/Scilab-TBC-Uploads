clc 
// Given that
r = 2 // ratio of kinetic energy of body to its rest mass
// Sample Problem 12 on page no. 11.22
printf("\n # PROBLEM 12 # \n")
printf(" Standard formula used \n")
printf(" m = m_0/((1-v^2/c^2)^1/2) \n KE = (m-m_0)*c^2  \n ")
v = 3e8 * sqrt(1 - (1 / (r + 1))^2)
printf("\n Velocity of particle is %f c.",v/3e8)
