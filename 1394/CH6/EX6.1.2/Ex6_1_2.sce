
clc
//Initialization of variables
z1 = 3
z2 = 1
D2 = 2.03*10^-5 // cm^2/sec
D1 = 0.62*10^-5 // cm^2/sec
//Calculations
D = ((z1+z2)/((z1/D2)+(z2/D1)))*10^5// x*10^-5 cm^2/sec
//Results
printf("The diffusion coefficient is %.2f x10^-5 cm^2/sec",D)
