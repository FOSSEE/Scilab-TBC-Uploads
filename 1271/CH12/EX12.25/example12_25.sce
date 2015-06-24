clc 
// Given that
P = 1e9 // power required for enlighten the city in watt
e = 30 // percentage efficiency of nuclear reactor
E = 3.2e-11 // energy released per fission in J
// Sample Problem 25 on page no. 12.40
printf("\n # PROBLEM 25 # \n")
printf("Standard formula used \n")
printf(" E_total = E*N_0/n \n")
E_ = E * 30 / 100
N = P / E_
N_ = N * 24 * 3600
m = N_ * 235 / 6.023e26 
printf("\n Amount of fuel required per day is %f kg.",m)
