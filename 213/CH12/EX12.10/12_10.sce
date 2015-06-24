//To find number of teeth
clc
//Given:
G=4
phi=14.5 //degrees
//Solution:
//Least number of teeth on each wheel:
//Calculating the least number of teeth on the pinion
t=2*%pi/tand(phi)
//Calculating the least number of teeth on the gear
T=G*t
//Results:
printf("\n\n Least number of teeth on the pinion, t = %d.\n\n",t+1)
printf(" Least number of teeth on the gear, T = %d.\n\n",T+1)