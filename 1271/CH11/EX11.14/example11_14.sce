clc 
// Given that
m = 1.67e-27  // mass of electron in kg
m_ = 9.1e-31 // rest mass of electron in kg
// Sample Problem 14 on page no. 11.23
printf("\n # PROBLEM 14 # \n")
printf(" Standard formula used \n")
printf(" m = m_0/((1-v^2/c^2)^1/2) \n ")
v = 3e8 * sqrt(1 - (m_ / m)^2)
printf("\n Velocity of electron is %f meter/sec.",v)
