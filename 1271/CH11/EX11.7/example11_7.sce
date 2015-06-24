clc 
// Given that
r = 1.2 // ratio of mass of particle to the rest mass
// Sample Problem 7 on page no. 11.20
printf("\n # PROBLEM 7 # \n")
printf(" Standard formula used \n")
printf(" m = m_0/((1-v^2/c^2)^1/2) \n ")
v = 3e8 * sqrt(1 - (1 / r)^2)
printf("\n Speed of particle is %f c.",v/3e8)
