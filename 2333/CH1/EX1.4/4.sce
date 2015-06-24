clc
//Given that
l = 9 // effective path length in m
lambda = 5000 // wavelength in angstrom 
v = 3e4 // velocity of earth in m
c = 3e8 // Speed of light in m/s
// problem 4 page no 17
printf("\n # Problem 4 # \n")
del_n = 2*l*v^2/(c^2*lambda*1e-10) // fringe shift
printf("There will be a fringe shift of %f.", del_n)
