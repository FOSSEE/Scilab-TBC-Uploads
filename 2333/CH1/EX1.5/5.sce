clc
//Given that
l = 9 // effective path length in m
lambda = 6000 // wavelength in angstrom 
del_n = 0.4 // fringe shift
c = 3e8 // Speed of light in m/s
// problem 5 page no 17
printf("\n # Problem 5 # \n")
v = c*sqrt(lambda*1e-10*del_n/(2*l)) // Speed of earth wrt ether in m/s
printf("Relative velocity of earth and ether is %e m/s", v)
// Whereas answre in book is 3.30e+4 m/sec
