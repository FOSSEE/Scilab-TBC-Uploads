clc
// Given That
solar_const = 2 // energy received by earth from sun in Cal/min cm2
mu_not = 1.2566e-6 // universal constant
epsilon_not = 8.85e-12 // universal constant
//Sample Problem 14 Page No. 86
printf("\n # Problem 14 # \n ")
ratio = sqrt(mu_not / epsilon_not) // constant
E = sqrt (ratio *4.2 * solar_const / 6e-3) 
E_not = E * sqrt(2) //calculation of Amplitude of electric  vectors
H_not = E_not / ratio//calculation of Amplitude of magnetic vectors
 printf("Amplitude of electrical and magnetic vectors are given as %f V/m and %f A/m",E_not,H_not)
