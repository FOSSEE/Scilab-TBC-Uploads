clc 
// Given that
V1 = 40e3 // voltage in first case in V
V2 = 20e3 // voltage in second case in V
V3 = 100e3 // voltage in second in V
// Sample Problem 1 on page no. 20.7
printf("\n # PROBLEM 1 # \n")
printf("Standard formula used \n ")
printf("1/2*m*v^2 = eV \n")
v1 = 0.593e6 * sqrt(V1)
lambda1 = 12400 / V1
v2 = 0.593e6 * sqrt(V2)
lambda2 = 12400 / V2
v3 = 0.593e6 * sqrt(V3)
lambda3 = 12400 / V3
printf("\n Max. speed of electrons at %d Volts is %e m/sec.\n Max. speed of electrons at %d Volts is %e m/sec./sec.\n Max. speed of electrons at %d Volts is %e m/sec. \n Shortest wavelength of x-ray = %f Angstrom.\n Shortest wavelength of x-ray = %f Angstrom.\n Shortest wavelength of x-ray = %f Angstrom.",V1,v1,V2,v2,V3,v3,lambda1,lambda2,lambda3)
