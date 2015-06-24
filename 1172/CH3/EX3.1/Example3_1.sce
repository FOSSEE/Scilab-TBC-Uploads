clc
//Given that
h = 6.6e-34 // plank's constant
nu = 2e15 // frequency in Hz
phi = 6.72e-19
m = 9e-31
//Sample Problem 1 Page No. 135
printf("\n\n\n # Problem 1 # \n")
printf("Standard formula Used \n ( 1/2)*m*v^2 = h*nu - phi")
v = sqrt ((h * nu)/ m ) //calculation of maximum velocity of photoelectron
printf("\n Maximum velocity of photoelectron can be %e  m/s.. ", v)
