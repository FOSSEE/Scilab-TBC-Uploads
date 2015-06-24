// Initilization of variables
r_1=0.075 // m
r_2=0.15 // m
P=50 // N
W=100 // N
i_g=0.05 // m
theta=30 // degree
g=9.81 // m/s^2
// Calculations
// The eq'n for acceleration of the pool is given by solving eqn's 1,2 &3 as,
a=(50*g*(r_2*cosd(theta)-r_1))/(100*((i_g^2/r_2)+r_2)) // m/s^2
// Results
clc
printf('The acceleration of the pool is %f m/s^2 \n',a)
