
 clc
//Initialization of variables
zCa = 2
zCl = 1
DCl = 2.03*10^-5 // cm^2/sec
DCa = 0.79*10^-5 // cm^2/sec
//Calculations
DCaCl2 = ((zCa+zCl)/((zCa/DCl)+(zCl/DCa)))*10^5// x*10^-5 cm^2/sec
//Results
printf("The diffusion coefficient of CaCl2 is %.2f x10^-5 cm^2/sec",DCaCl2)
