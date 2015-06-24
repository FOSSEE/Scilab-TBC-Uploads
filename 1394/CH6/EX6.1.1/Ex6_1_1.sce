
clc
//Initialization of variables
DHplus = 9.31*10^-5 // cm^2/sec
DClminus = 2.03*10^-5 // cm^2/sec
//Calculations
DHCl = (2/((1/DHplus)+(1/DClminus)))*10^5 // x*10^-5 cm^2/sec
tHplus = DHplus/(DHplus+DClminus)
percentage = tHplus*100 // percent
//Results
printf("The diffusion co efficient of the solution is %.1f x10^-5 cm^2/sec",DHCl)
printf("\n The transeference for protons is %.f percent",percentage)
