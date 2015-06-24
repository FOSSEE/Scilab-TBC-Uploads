clc 
// Given that
E = 200 // energy released per fission of U(235)in Mev
m = 3.7 // mass of U(235) consumed in a day in kg
e = 20 // percentage efficiency of reactor
// Sample Problem 26 on page no. 12.41
printf("\n # PROBLEM 26 # \n")
printf("Standard formula used \n")
printf(" E_total = E*N_0/n \n")
E_ = E * 1.6e-13
N = m * 6.023e26 / 235
H = E_ * e / 100
k = H * N / (24 * 3600)
printf("\n Power output of reactor is %f GW.",k * 1e-9)
