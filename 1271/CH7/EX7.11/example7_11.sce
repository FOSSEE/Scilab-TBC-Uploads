clc 
// Given that
x = 0.3 // stretch in spring in meter
m1 = 6 // mass of first body in kg
m2 = 1 // mass of second body in kg
g = 9.8 //  gravitational acceleration of earth in m/sec^2
// Sample Problem 11 on page no. 7.26
printf("\n # PROBLEM 11 # \n")
k = (m1 * g) / x
T = (2 * %pi) * sqrt(m2 / k)
printf("\n Standard formula used \n k = (m1 * g) / x. \n T = (2 * pi) * sqrt(m2 / k).\n")
printf("\n Time period of motion = %f sec. ",T)


