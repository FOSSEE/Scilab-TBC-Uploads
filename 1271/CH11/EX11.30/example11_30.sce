clc 
// Given that
T = 17.8e-9 // half-life of prticle at rest in sec
v = 2.4e8 // speed of particle in meter/sec
// Sample Problem 30 on page no. 11.30
printf("\n # PROBLEM 30 # \n")
printf(" Standard formula used \n")
printf(" t = t_0/((1-v^2/c^2)^1/2) \n")
t = T / (sqrt(1 - (v / 3e8)^2))
printf("\n New half-life of particle is %f nanosec.",t/1e-9)
