clc 
// Given That
lambda1 = 5.890e-7 // wavelength of first light in meter
lambda2 = 4.358e-7 // wavelength of second light in meter
n1 = 40 // no. of fringes observed in the field of in first case 
// Sample Problem 18 on page no. 1.46
printf("\n # PROBLEM 18 # \n")
n2 = (n1 * lambda1) / lambda2 // by using formula n1*lambda1=n2*lambda2
printf("\n Standard formula used \n n1*lambda1=n2*lambda2. \n")
printf("\n No. of fringes observed in field of view in second case = %d. ", floor(n2))
