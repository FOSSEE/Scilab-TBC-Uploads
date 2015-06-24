clc 
// Given that
V = 8000 // volume of hall in meter^3
t = 1.8 // reverberation time in sec
// Sample Problem 5 on page no. 8.19
printf("\n # PROBLEM 5 # \n")
printf(" Standard formula used \n")
printf(" T = 0.161 V/a*S \n" )
aS = (0.161 * V) / t// calculation for the total absorption constant
printf("\n The total absorption constant = %f O.W.U.",aS)
