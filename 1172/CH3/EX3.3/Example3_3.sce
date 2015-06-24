clc
//Given that
applied_voltage = 4e4 // in volt
h = 6.624e-34 // plank's constant
c = 3e8 // speed of light
e = 1.6e-19 // charge on electron
//Sample Problem 3 Page No. 136
printf("\n\n\n # Problem 3 # \n")
printf("\n Standard formula Used \n E = h*c/lambda")
lambda = h * c / ( e * applied_voltage) *1e10 //calculation of Shortest wavelength emitted
printf("\n Shortest wavelength emitted is %f Angstrom.", lambda)
