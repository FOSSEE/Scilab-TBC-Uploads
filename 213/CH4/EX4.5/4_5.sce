//To Find the Moment of Inertia
clc
//Given:
m=85 //kg
h=0.1 //m
//Solution:
//Calculating the Frequency of Oscillation
n=100/145 //Hz
//Calculating the Equivalent Length of Simple Pendulum
L=(1/(2*%pi)/.69*sqrt(9.81))^2
//Calculating the Radius of Gyration
kG=sqrt((L-h)*h)
//Calculating the Moment of Inertia of the Flywheel through the Centre of Gravity
I=m*kG^2 //kg-m^2
//Results:
printf("\n\n The Moment of Inertia of the Flywheel Through its c.g., I = %.1f kg-m^2.\n\n",I)