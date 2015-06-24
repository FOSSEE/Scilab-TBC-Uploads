clc 
// Given that
t = 2.7 // half-life of Au(198) in days
m = 1e-6 // mass of sample in gm
T = 8 * 86400 // time in seconds
// Sample Problem 10 on page no. 12.35
printf("\n # PROBLEM 10 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n A =lambda*N    (Activity of sample) \n")
lambda = 0.693 / (t * 86400)
N = (m * 6.023e23) / 198 // by the formula (N = mass*Avogadro number/molar mass)
A_ = lambda * N
A = A_ * (1 / exp(lambda * T))
printf("\n Activity of sample is %e decays/sec.",A)
