// Initilization of variables
N=1800 // r.p.m // Speed of the shaft
t=5 // seconds // time taken to attain the rated speed // case (a)
T=90 // seconds // time taken by the unit to come to rest // case (b)
// Calculations
omega=(2*%pi*N)/(60)
// (a)
// we take alpha_1,theta_1 & n_1 for case (a)
alpha_1=omega/t // rad/s^2 //
theta_1=(omega^2)/(2*alpha_1) // radian
// Let n_1 be the number of revolutions turned,
n_1=theta_1*(1/(2*%pi))
// (b)
// similarly we take alpha_1,theta_1 & n_1 for case (b)
alpha_2=(omega/T) // rad/s^2 // However here alpha_2 is -ve
theta_2=(omega^2)/(2*alpha_2) // radians
// Let n_2 be the number of revolutions turned,
n_2=theta_2*(1/(2*%pi))
// Results
clc
printf('(a) The no of revolutions the unit turns to attain the rated speed is %f \n',n_1)
printf('(b) The no of revolutions the unit turns to come to rest is %f \n',n_2)
