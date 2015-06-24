clc 
// Given that
m = 5 // Romoval rate in cm^3/min
A = 56 // Atomic gram weight in gm
Z = 2 // Valence at which dissolation takes place
D = 7.8 // Density of iron in gm/cm^3
// Sample Problem 3 on page no. 345
printf("\n # PROBLEM 6.3 # \n")
I = (m/60)*(D*Z*96500)/(A)
printf("\n Current required = %d amp",I)

