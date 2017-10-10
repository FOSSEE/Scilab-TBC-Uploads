//Clearing console
clc
clear

//Intializing variables
t1 = 0.03
w1 = 5
t2 = 0.1
w2 = 15

//Solving for Rayleigh coefficients
k = [1/(2*w1) w1/2;1/(2*w2) w2/2]
f = [t1;t2]
u=linsolve(k,-f)

printf('\nResults\n')
printf('\nRayleigh coefficients\n Alpha =%f\n Beta =%f',u(1,1),u(2,1))
