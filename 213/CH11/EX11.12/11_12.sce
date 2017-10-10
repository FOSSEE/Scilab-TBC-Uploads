//To find power transmitted
clc
//Given:
T0=2000 //N
mu0=0.3
theta=150*%pi/180 //radians
r2=200/1000, d2=2*r2 //m
N2=500//rpm
//Solution:
//Calculating the velocity of the belt
v=%pi*d2*N2/60 //m/s
//Calculating the tensions in the belt
//Initial tension, T0 = (T1+T2)/2, or T1+T2 = 2*T0
//Ratio of the tensions in the belt, log(T1/T2) = mu0*theta, or T1-T2*exp(mu0*theta) = 0
A=[1 1; 1 -exp(mu0*theta)]
B=[2*T0; 0]
V=A \ B
T1=V(1) //N
T2=V(2) //N
//Calculating the power transmitted
P=(T1-T2)*v/1000 //kW
//Results:
printf("\n\n Power transmitted, P = %.1f kW.\n\n",P)