//To find the gyroscopic couple
clc
//Given:
d=0.6, r=d/2 //m
m=30 //kg
theta=1 //degree
N=1200 //rpm
//Solution:
//Calculating the angular speed of the shaft
omega=2*%pi*N/60 //rad/s
//Calculating the gyroscopic couple acting on the bearings
C=round(m/8*omega^2*r^2*sind(2*theta)) //N-m
//Results:
printf("\n\n Gyroscopic couple acting on the bearings, C = %d N-m.\n\n",C)