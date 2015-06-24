// Initilization of variables
t=1 // second // time period of the simple pendulum
g=9.81 // m/s^2
// Calculations
// Length of pendulum is given as,
l=(t/(2*%pi)^2)*g // m
// Let t_u be the time period when the elevator moves upwards. Then the time period is given as,
t_u=2*%pi*sqrt((l)/(g+(g/10))) // seconds
// Let t_d be the time period when the elevator moves downwards.
t_d=2*%pi*sqrt(l/(g-(g/10))) // seconds
// Results
clc
printf('The time period of oscillation of the pendulum for upward acc of the elevator is %f seconds \n',t_u)
printf('The time period of oscillation of the pendulum for downward acc of the elevator is %f seconds \n',t_d)
