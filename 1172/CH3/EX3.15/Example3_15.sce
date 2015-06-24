clc
//Given that
m = 2e-3 // mass of linear harmonic oscillator in kg
k = 100 // spring constant in N/m
h = 6.6e-34 // Plank's constant 
//Sample Problem 15 page No. 142
printf("\n\n\n # Problem 15 # \n")
printf("\n Standard formula Used \n f =  sqrt(k / m ) \n U = 1/2* h * nu ")
 nu = sqrt(k / m ) / (2 * %pi) //calculation of frequency of linear harmonic oscillator
U = 1/2* h * nu //calculation of Zero point energy of a linear harmonic oscillator  
printf ("\n Zero point energy of a linear harmonic oscillator  is %e J.", U )

