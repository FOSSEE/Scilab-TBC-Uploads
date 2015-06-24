clc
// given that
R = 6.4e8 // radius of earth in cm
T = 24*60*60 // time period of one revolution of earth around its own axis
t = 1 // time of 1 sec
printf("\n # Problem 2 # \n")
omega = (2*%pi/T)// angular velocity of earth in theta/sec
alpha = omega^2 *R // Radial acceleration of earth in cm/sec^2
S = 1/2 * alpha*t^2 // altered distance of particle in one sec
printf("Error involved in measurement of position for one minute is %f cm.",S)
