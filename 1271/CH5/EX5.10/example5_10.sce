clc 
// Given that
mu1 = 3.6 // refractive index for core
mu2 = 3.55 // refractive index for cladding
// Sample Problem 10 on page no. 5.19
printf("\n # PROBLEM 10 # \n")
NA = sqrt(mu1^2 - mu2^2)//calculation for numerical aperture
Mm1 = 0.5 * (%pi * 5 * NA)^2//calculation for no. of modes in first case
Mm2 = 0.5 * (%pi * 50 * NA)^2//calculation for no. of modes in second case
printf("\n Standard formula used \n Mm=1/2(pi*d*NA/lambda)^2. NA=sqrt(mu1^2-mu2^2). \n")
printf("\n Number of modes in first case = %d. \n Number of modes in second case = %d.",Mm1,Mm2)
