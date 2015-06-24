clc 
// Given that
E = 200 // energy released per fission in Mev
m = 1 // mass of U(235) in kg
// Sample Problem 24 on page no. 12.40
printf("\n # PROBLEM 24 # \n")
printf("Standard formula used \n")
printf(" E_total = E*N_0/n \n")
E_ = E * 1.6e-13
k = E_ * 6.023e26 * m / 235
printf("\n Energy released  by fission of 1 kg of U(235)is %e J.",k)
