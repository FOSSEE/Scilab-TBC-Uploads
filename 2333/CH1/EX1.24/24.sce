clc 
// Given that
m_0 = 1 // let mass of the rod in kg
m = 1.5*m_0 // mass of moving rod in kg
l_0 = 1 // length of meter stick in m 
c = 3e8 // speed of light in m/sec
// Sample Problem 24 on page no. 52
printf("\n # PROBLEM 24 # \n")
printf(" Standard formula used \n")
printf(" l = l_0/((1-v^2/c^2)^1/2) \n m = m_0/((1-v^2/c^2)^1/2) \n")

v = c*sqrt(1-(m_0/m)^2) // velocity of moving rod in m/sec
L = l_0 * sqrt(1- (v / c)^2)
printf("\n Length as it appear to the observer is %f meter. ",L)
