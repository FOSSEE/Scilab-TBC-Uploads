clc 
// Given that
R = 1e6 // radioactivity of Pb(214) in disintegrations per sec
t = 26.8 // half life in minute 
// Sample Problem 17 on page no. 12.37
printf("\n # PROBLEM 17 # \n")
printf("Standard formula used \n")
printf(" lambda = 0.693 / t_1/2     (Decay constant) \n A =N*lambda      (Activity of sample) \n")
lambda = 0.693 / (t * 60)
m = (R * 214) / (6.023e23 * lambda)
printf("\n Mass of Pb(214) is %e gm.",m)
