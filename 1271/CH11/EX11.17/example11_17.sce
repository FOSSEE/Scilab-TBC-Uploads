clc 
// Given that
r1 = 3 // ratio of kinetic energy of body to its rest mass in first case
r2 = 1 // ratio of kinetic energy of body to its rest mass in second case
// Sample Problem 17 on page no. 11.24
printf("\n # PROBLEM 17 # \n")
printf(" Standard formula used \n")
printf(" m = m_0/((1-v^2/c^2)^1/2) \n KE = (m-m_0)*c^2 \n")
v1 = 3e8 * sqrt(1 - (1 / (r1 + 1))^2)
v2 = 3e8 * sqrt(1 - (1 / (r2 + 1))^2)
printf("\n Velocity of particle if kinetic energy is %d times of rest mass energy  is %e meter/sec.\n Velocity of particle if kinetic energy is %d times of rest mass energy  is %e meter/sec.\n",r1,v1,r2,v2)
