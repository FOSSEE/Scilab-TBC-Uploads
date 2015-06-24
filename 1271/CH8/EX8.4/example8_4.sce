clc 
// Given that
A = 15 * 30 // area of the floor in square meter
h = 6 // height of hall in meter
N = 500 // no. of people
t = 1.36 // optimum time for orchestral music in sec
k = 0.44 // absorption coefficient per person
// Sample Problem 4 on page no. 8.19
printf("\n # PROBLEM 4 # \n")
printf(" Standard formula used \n")
printf(" T = 0.161 V/a*S \n" )
aS = 0.161 * ((A * h) / t)
a = N * k
a_ = aS - a
w = a_ + (N / 2) * k + (N / 2) * 0.02
t = (0.161 * (A * h)) / w
printf("\n Coefficient of absorption to be provided by the walls, floor and ceiling when the hall is fully occupied is %f SI unit.\n Reverberation time if only half upholstered seats are occupied is %f sec.",a_,t)
