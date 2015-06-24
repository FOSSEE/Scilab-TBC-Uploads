clc
//Given that
lambda1 = 1.321 // wavelength of L- alpha line for platinum
lambda2 = 4.174 // wavelength of l - alpha line of unknown substance 
z1= 78// atomic number of platinum
c = 3e8 // speed of light in m/s
b = 7.4 // constant  for L - alpha line
//Sample Problem 21 page No. 146
printf("\n\n\n # Problem 21 # \n")
printf("\n Standard formula Used \n sqrt(nu1)= a*(Z-b)")
z2 = b + (z1 - b) * sqrt(lambda1 / lambda2) //calculation of the unknown substance has atomic number
printf ("\n The unknown substance has atomic number %d. ", z2)


