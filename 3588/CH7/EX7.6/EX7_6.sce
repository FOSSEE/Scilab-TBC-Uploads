//Clearing console
clc
clear

//Intializing variables
kx = 20
ky = 20
a = 0.5/12
b = 0.5/12
T =[180.000000;180.000000;180.000000;106.528061;111.987760;106.528061;89.057755;90.986763;89.057755]

T2 = [T(4,1);T(7,1);T(8,1);T(5,1)]

//Calculating the centroidal heat flux components for elements 2 and 3
q2x = -(kx/(4*a))*(T2(2,1)-T2(1,1)+T2(3,1)-T2(4,1))
q2y = -(ky/(4*b))*(T2(4,1)-T2(1,1)+T2(3,1)-T2(2,1))

//due to symmetry
q3x = q2x
q3y = -q2y

printf('\nResults\n')
printf('\nHeat flux components for element 2 \nq2x=%fBtu/hr-ft 2 \nq2y=%fBtu/hr-ft^2',q2x,q2y)
printf('\nHeat flux components for element 3 \nq3x=%fBtu/hr-ft 2 \nq3y=%fBtu/hr-ft^2',q3x,q3y)
