// Initilization of variables
l=1 // m // length of the simple pendulum
g=9.81 // m/s^2
// Calculations
// Let t_s be the time period when the elevator is stationary
t_s=2*%pi*sqrt(l/g) /// seconds
// Let t_u be the time period when the elevator moves upwards. Then from eqn 1
t_u=2*%pi*sqrt((l)/(g+(g/10))) // seconds
// Let t_d be the time period when the elevator moves downwards.
t_d=2*%pi*sqrt(l/(g-(g/10))) // seconds
// Results
clc
printf('The time period of oscillation of the pendulum for upward acc of the elevator is %f seconds \n',t_u)
printf('The time period of oscillation of the pendulum for downward acc of the elevator is %f seconds \n',t_d)
