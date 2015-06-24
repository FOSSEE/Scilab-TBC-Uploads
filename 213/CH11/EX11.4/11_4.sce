//To find the power transmitted
clc
//Given:
d=600/1000 //m
N=200 //rpm
mu=0.25
theta=160*%pi/180 //radians
T1=2500 //N
//Solution:
//Calcluating the velocity of the belt
v=%pi*d*N/60 //m/s
//Calcluating the tension in the slack side of the belt
T2=T1/exp(mu*theta) //N
//Calcluating the power transmitted by the belt
P=(T1-T2)*v/1000 //kW
//Results:
printf("\n\n Power transmitted by the belt, P = %.2f kW.\n\n",P)