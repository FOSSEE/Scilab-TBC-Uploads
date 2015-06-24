clc
//Given that
R = 1.097 // Rydberg’s constant
n1 = 1 // transition state no
n2 = 3 // transition state no
//Sample Problem 16b page No. 142
printf("\n\n\n # Problem 16b # \n")
printf("\n Standard formula Used \n For Lyman series 1/lambda =  R*((1/2)^2 -(1/n)^2)")
nu1 = R * (n2^2 - n1^2) / (n1^2 * n2^2) //calculation of frequency of first line of Lyman series
lambda1 = 1/ nu1 //calculation of Wavelength of first line of Lyman series
printf ("\n Wavelength of second line of Lyman series is %d Angstrom. ", lambda1 *1000 )
