clc
// Given That
l = 75 // length of laser beam in cm
power = 6e-3 // power of beam in mW
c = 3e8
//Sample Problem 4 Page No. 80
printf("\n # Problem 4 # \n ")
t = l / ( c * 100) //calculation of time taken to cover distance
U =  power/1000 * t//calculation of Energy stored in given length
 printf("Energy stored in given length is %e J \n", U)
