clc 
// Given that
t = 12.3 // half life in year
T = 50 // time in year 
// Sample Problem 15 on page no. 12.36
printf("\n # PROBLEM 15 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n N =N_0*e^(-lambda*t) \n")
lambda = 0.693 / t
f = 1 / exp(lambda * T)
printf("\n Fraction of radioactive isotope remained is %f .",f)
