clc 
// Given that
E = 200 // energy released per fission in Mev
m = 0.01 // mass of U(235) in gm
n = 235 // atomic no of sample
N_0=6.023e23 // Avogadro constant
// Sample Problem 23 on page no. 12.40
printf("\n # PROBLEM 23 # \n")
printf("Standard formula used \n")
printf(" E_total = E*N_0/n \n")
E_ = E * 1.6e-13
k = E_ * N_0 * m / n
H = k / 4.168
printf("\n Heat produce by complete disintegration is %e cal.\n Energy released is %e J.",H,E_)
