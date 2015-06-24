// Initilization of variables
W_a=25 // N 
W_b=25 // N 
W=200 // N // weight of the pulley
i_g=0.2 // m // radius of gyration
g=9.81 // m/s^2
// Calculations
// Solving eqn's 1 & 2 for acceleration of weight A (assume a)
a=(0.15*W_a*g)/(((W*i_g^2)/(0.45))+(0.45*W_a)+((0.6*W_b)/(3))) // m/s^2
// Results
clc
printf('The acceleration of weight A is %f m/s^2 \n',a)
