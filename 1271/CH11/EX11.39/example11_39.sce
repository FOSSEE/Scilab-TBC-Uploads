clc 
// Given that
k = 1.02 // kinetic energy of electron in Mev
E_ = 0.51 // rest mass energy of electron in Mev
c = 3e8 // velocity of photon in meter/sec
// Sample Problem 39 on page no. 11.32
printf("\n # PROBLEM 39 # \n")
printf(" Standard formula used \n")
printf(" E = KE + m*c^2 \n m = m_0/((1-v^2/c^2)^1/2) \n")
E = k + E_
v = c * sqrt(1 - (E_ / E)^2)
printf("\n Speed of the electron is %e meter/sec.",v)
