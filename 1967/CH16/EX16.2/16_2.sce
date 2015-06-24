clc
//initialisation of variables
clear
n= 2
m= 0.01422
m1= 0.00869
m2= 0.025
//CALCULATIONS
M = m2+m1
M1= (M*m1)^(1/n)
r= m/M1
//RESULTS
printf ('mean ionic molality = %.3f ',r)
