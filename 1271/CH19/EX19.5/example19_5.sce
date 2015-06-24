clc 
// Given that
T_c = 4.2 // critical temperature in K
T = 2.9 // temperature in K
lambda = 57 // penetration depth at 2.9 K in nm
// Sample Problem 5 on page no. 19.15
printf("\n # PROBLEM 5 # \n")
printf("Standard formula used \n ")
printf(" lambda_0 = lambda * (1 - (T / T_c)^4)^(1/2) \n")
lambda_ = lambda * (1 - (T / T_c)^4)^(1/2)
printf("\n Penetration depth at 0 K is %f nm.",lambda_)
