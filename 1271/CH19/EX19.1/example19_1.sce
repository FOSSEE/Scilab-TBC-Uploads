clc 
// Given that
T_c = 7.2 // critical temperature in K
T = 5.1 // temperature in K
lambda_ = 380 // penetration depth at 0 K in A
// Sample Problem 1 on page no. 19.13
printf("\n # PROBLEM 1 # \n")
printf("Standard formula used \n ")
printf(" lambda = lambda_0 * (1 - (T / T_c)^4)^(-1/2) \n")
lambda = lambda_ * (1 - (T / T_c)^4)^(-1/2)
printf("\n Penetration depth is %f Angstrom.",lambda)
