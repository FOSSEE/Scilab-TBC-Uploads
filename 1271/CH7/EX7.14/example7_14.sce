clc 
// Given that
n = 260 // frequency in Hz
Q = 2000 // quality factor
r = 1 / (exp(1)^2) // decrease in amplitude 
// Sample Problem 14 on page no. 7.27
printf("\n # PROBLEM 14 # \n")
tou = Q / (2 * %pi * n)
t = 2 * tou // by using formula A=A_exp(-st) and using r=A/A_
printf("\n Standard formula used \n tou = Q / (2 * pi * n). \n t = 2 * tou. \n")
printf("\n Time = %f sec.",t)


