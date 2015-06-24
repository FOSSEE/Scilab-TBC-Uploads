clc 
// Given that
Z = 79 // atomic no. of anticathode
R = 1.097e7 // Rydberg constant in m^-1
c = 3e8 // speed of light in m/sec
// Sample Problem 18 on page no. 20.13
printf("\n # PROBLEM 18 # \n")
printf("Standard formula used \n ")
printf(" nu = a*(Z-b)^2 ........Moseley law \n")
f = 3/4 * (R * c) * (Z-1)^2
printf("\n Frequency of k line is %e Hz.",f)
