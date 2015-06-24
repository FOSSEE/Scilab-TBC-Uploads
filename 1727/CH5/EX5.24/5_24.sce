clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
d=0.5 //m
vel=1 //m/s
depth=1.2 //m
Cd=0.62
//calculations
H=(d*3/(2*Cd))^(2/3)
hw=depth-H
//results
printf("height of weir plate = %.2f m",hw)
//The answer given in textbook is wrong please use a caclculator.
