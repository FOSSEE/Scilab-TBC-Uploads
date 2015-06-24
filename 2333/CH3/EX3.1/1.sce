clc 
   
// Given that
lambda = 6000 // wavelength of light in angstrom
e = 0.1 // Width of slit in mm
d = 1 // Linear distance in mm
// Sample Problem 1 on page no. 137
printf("\n # PROBLEM 1 # \n")
printf(" Standard formula used \n")
printf(" lambda = e*sin(theta)  \n")
theta = asin(lambda*1e-10/(e*1e-3)) // Calculation of angle in radian
ang_wdt = 2*theta // Angular width of central maxima
y = d*ang_wdt // Total linear width of central maxima 
printf("\n Total Angular width of central maxima is %erad  \n Total linear width of central maxima  %f cm.",ang_wdt,y*100)
