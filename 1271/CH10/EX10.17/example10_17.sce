clc 
// Given that
q = 13.5e-6 // charge enclosed at the centre of cube in C
l = 6 // length of the side of cube in cm
e0 = 8.85e-12 // permittivity of space
// Sample Problem 17 on page no. 10.43
printf("\n # PROBLEM 17 # \n")
fi = q / e0
fi_ = fi / 6
q = e0 * fi
printf("Standard formula used \n fi=q/e_.\n")
printf("Electric flux through the whole volume of the cube is %e Nm^2/C.\n Electric flux through one face of the cube is %e Nm^2/C.",fi,fi_)
