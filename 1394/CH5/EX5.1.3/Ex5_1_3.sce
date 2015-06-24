

clc
//initialization of variables
p0 = 1//atm
p = 33 //atm
D0 = 0.043 // cm^2/sec
//Calculations 
D = (p0*D0/p)*10^5 // x*10^-5 cm^2/sec
//Results
printf("The diffusion co efficient for the given conditions is %.3f x10^-5 cm^2/sec",D)
disp("The answer is a bit different due to rounding off error in textbook. Also please verify that 10^-5 factor is utilized outside.")
