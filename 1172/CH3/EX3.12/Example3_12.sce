clc
//Given that
r = 1e-14 // radius of nucleus of atom in meter
h = 6.626e-34 // Plank's constant
//Sample Problem 12 page No. 140
printf("\n\n\n # Problem 12 # \n")
printf("\n Standard formula Used \n delta_p * delta_x >= h /(2*pi)")
del_x = 2 * r //calculation of Uncertainty in position
del_p = h / (2 * %pi * del_x) //calculation of Uncertainty in momentum
printf ("\n Uncertainty in momentum is %e Kg-m/s. ", del_p )

