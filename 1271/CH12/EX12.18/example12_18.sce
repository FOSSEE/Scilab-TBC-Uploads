clc 
// Given that
m = 1 // mass of Ra(226) in gm 
R = 1 // radioactivity of Ra(226) in curie
// Sample Problem 18 on page no. 12.37
printf("\n # PROBLEM 18 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n tau = 1/lambda \n A =N*lambda      (Activity of sample) \n")
r = R * 3.7e10 // in disintegrations per sec
N = 6.023e23 * m / 226
lambda = r * 226 / 6.023e23
T = 1 / lambda
T_ = 0.693 / lambda
printf("\n Mean life of radium is %e year.\n Half life of radium is %e year.",T,T_)
