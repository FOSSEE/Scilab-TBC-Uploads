clc
//Given that
n = 2 // order 
lambda = 5.2e-11 // wavelength in Angstrom 
d = 2.98e-10 // interatomic separation in Angstrom
//Sample Problem 10b page No. 139
printf("\n\n\n # Problem 10b # \n")
printf("\n Standard formula Used \n 2 * d * sin(theta) = n * lambda ")
theta_rad = asin ( (n * lambda) / ( 2 * d)) //calculation of angle for secondary maxima in radian
theta_deg = theta_rad * 180 / %pi //calculation of angle for secondary maxima in degree
printf ("\n Angle for secondary maxima is  %d. ", theta_deg )

