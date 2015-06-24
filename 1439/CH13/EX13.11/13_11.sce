clc 
//initialisation of variables
T= 25 //C
n= 2
F= 96500 //coloumbs
R= 8.316 //J mole^-1 K^-1
a= 76.2*10-5
a1= 79*10^-5
A= 155.2*10^-5
//CALCULATIONS
D0= n*a*a1*R*(273+T)*10^-6/(F*A)
//RESULTS
printf ('limiting diffusion coefficient= %.2e cm^2 sec^-1',D0)
