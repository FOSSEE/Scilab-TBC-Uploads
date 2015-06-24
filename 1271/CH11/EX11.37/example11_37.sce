clc 
// Given that
E = 900 // total relativistic energy of proton in Mev
m = 1.63-27 // rest mass of proton in kg
c = 3e8 // velocity of photon in meter/sec
// Sample Problem 37 on page no. 11.32
printf("\n # PROBLEM 37 # \n")
printf(" Standard formula used \n")
printf(" E = m*c^2 \n ")
m_ = (E * 1.6e-13) / (c)^2
printf("\n Relativistic mass of proton is %e kg,\n Here relativistic mass is same as rest mass\n hence proton is at rest and speed and kinetic energy of proton will be zero",m_)
