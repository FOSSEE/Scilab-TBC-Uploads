
clc
//initialization of variables
R = 0.3 // cm
K1 = 18.6 // sec^-1
D = 0.027 // cm^2/sec
//Calculations
l = R/3 // cm
n = (sqrt(D/(K1*(l^2))))*coth(sqrt(K1*(l^2)/D))
//Results
printf("The value of reduction in reaction rate due to diffusion is %.2f",n)
