clc 
// Given that
T1 = 2.18 // temperature in first case in K
lambda1 = 16 // penetration depth at 2.18 K in nm
T2 = 8.1 // temperature in second case in K
lambda2 = 96 // penetration depth at 8.1 K in nm
// Sample Problem 6 on page no. 19.15
printf("\n # PROBLEM 6 # \n")
printf("Standard formula used \n ")
printf(" lambda = lambda_0 * (1 - (T / T_c)^4)^(-1/2) \n")
Tc = (((lambda2^2 * T2^4) - (T1^4 * lambda1^2)) / (lambda2^2 - lambda1^2))^(1/4)
printf("\n Critical temperature is %f K.",Tc)
