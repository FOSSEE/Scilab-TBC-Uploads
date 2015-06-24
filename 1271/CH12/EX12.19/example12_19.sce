
clc 
// Given that
m = 0.0001 // mass of Sr(90) in gm
t = 28 // half life of Sr(90) in year
t_ = 9 // time in sec
// Sample Problem 19 on page no. 12.38
printf("\n # PROBLEM 19 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n del_N = N_0*lambda*t (disintegration of sample) \n")
lambda = 0.693 / (t * 86400 * 365)
N_ = 6.023e23 * m / 90
n = N_ * lambda * t_
printf("\n Activity of Sr is %e disintegration/sec.",n)
//Answer in the book:5.25 X 10^8
//Answer in the program:4.726955 e+09


