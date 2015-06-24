clc 
// Given that
t = 15 // half-life for Na(23) in hours
r = 93.75 // percentage fraction of sample which decayed 
// Sample Problem 3 on page no. 12.32
printf("\n # PROBLEM 3 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n N =N_0*e^(-lambda*t) \n")
lambda = 0.693 / t
T = (1 / lambda) * (log(100 / (100 - r)))
printf("\n Time taken for 93.75 per decay of sample is %d hours.",T)
