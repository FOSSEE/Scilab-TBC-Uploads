
clc
//initialization of variables
D = 1*10^-5 //cm^2/sec
d = 2.3 // cm
L = 14 // cm
v0 = 6.1 // cm/sec
//calculations
k = ((3^(1/3))/(gamma(4/3)))*((D/d))*(((d^2)*v0/(D*L))^(1/3))// cm/sec
//Results
printf("The average mass transfer coefficient is %.6f cm/sec",k)
