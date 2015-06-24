clc 
// Given that
lambda = 6e-7 // wavelength of light in meter
d = 0.5 // distance of observation point from circular opening in meter
r1 = 2e-3 // radius of circular opening in first case in meter
r2 = 2e-2 // radius of circular opening in second case in meter 
// Sample Problem 4 on page no. 2.39
printf("\n # PROBLEM 4 # \n")
n1 = (r1^2) / (d * lambda) // calculation for no. of half period zone in first case 
n2 = (r2^2) / (d * lambda) // calculation for no. of half period zone in second case
printf("\n Standard formula used \n n = (r^2) / (d * lambda) \n")
printf("\n No. of half period zone in first case = %d \n no. of half period zone in second case = %d ",n1,n2)
