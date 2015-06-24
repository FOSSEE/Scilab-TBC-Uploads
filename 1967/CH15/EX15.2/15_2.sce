clc
//initialisation of variables
clear
M= 0.1 //molal
Tf= 0.345 //C
k= -9.702*10^-3
k1= -5.2*10^-6
//CALCULATIONS
a= %e^(k*Tf+k1*Tf^2)
//RESULTS
printf ('activity = %.4f ',a)
