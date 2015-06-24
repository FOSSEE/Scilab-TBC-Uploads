clc 
// Given that
ratio = 16 // ratio of intensities of two waves
// Sample Problem 9 on page no. 1.43
printf("\n # PROBLEM 9 # \n")
printf("\n Standard formula used \n I = k*a^2. \n")
a1 = sqrt(ratio) // by the formula amplitude = sqrt(intensity)
a2 = 1
R = ((a1 + a2) ^ 2) / ((a1 - a2) ^ 2)// calculation for ratio of maximum intensity with minimum intensity
printf("\n Ratio of maximum intensity with minimum intensity = %f",R)
