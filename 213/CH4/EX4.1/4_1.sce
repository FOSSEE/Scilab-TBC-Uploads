//To Find the Velocity and Acceleration
clc
//Given:
N=120 //rpm
r=1,x=0.75 //m
//Solution:
//Calculating Angular Velocity
omega=2*%pi*N/60 //rad/s
//Calculating Velocity of the Piston
v=omega*sqrt(r^2-x^2) //m/s
//Calculating Acceleration of the Piston
a=omega^2*x
//Results:
printf("\n\n The Velocity of the Piston, v = %.2f m/s.\n",v)
printf(" The Acceleration of the Piston, a = %.2f m/s^2.\n\n",a)