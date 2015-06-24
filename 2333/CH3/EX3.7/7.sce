clc 
   
// Given that
lambda = 6000 // wavelength of light in angstrom
e = 1.2e-4 // Width of slit in cm

// Sample Problem 7 on page no. 142
printf("\n # PROBLEM 7 # \n")
printf(" Standard formula used \n")
printf(" lambda = e*sin(theta)  \n")
theta = asin(lambda*1e-10/(e*1e-2)) // Calculation of angle in radian
ang_wdt = theta*180/%pi // Angular width of central maxima
printf("\n Total Angular width of central maxima is %d degree.",ceil(ang_wdt))
