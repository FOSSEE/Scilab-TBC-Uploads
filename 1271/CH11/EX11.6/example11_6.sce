clc 
// Given that
r = 4 // ratio of mass of particle to the rest mass
// Sample Problem 6 on page no. 11.20
printf("\n # PROBLEM 6 # \n")
printf(" Standard formula used \n")
printf(" m = m_0/((1-v^2/c^2)^1/2) \n ")
v = 3e8 * sqrt(1 - (1 / r)^2)
printf("\n Speed of particle is %e meter/sec.",v)
