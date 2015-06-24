//To Find the Frequency and Velocity
clc
//Given:
m=60 //kg
r=0.0125,x=0.005 //m
//Solution:
//Calculating the Extension of the Spring
delta=(.25/1.5)*60*10^-3 //m
//Calculating the Frequency of the System
n=1/(2*%pi)*sqrt(9.81/delta) //Hz
//Calculating the Angular Velocity of the Mass
omega=sqrt(9.81/delta) //rad/s
//Calculating the Linear Velocity of the Mass
v=omega*sqrt(r^2-x^2)
//Results:
printf("\n\n The Frequency of Natural Vibration, n = %.2f Hz.\n",n)
printf(" The Velocity of the Mass, v = %.2f m/s.\n\n",v)