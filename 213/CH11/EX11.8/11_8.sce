//To find width of the belt
clc
//Given:
P=7.5*1000 //W
d=1.2, t=10/1000 //m
N=250 //rpm
theta=165*%pi/180 //radians
mu=0.3
sigma=1.5*10^6 //N/m^2
rho=1*10^3 //kg/m^3
//Solution:
//Calculating the velocity of the belt
v=%pi*d*N/60 //m/s
//Calculating the tensions in the belt
//Power transmitted, P = (T1-T2)*v, or T1-T2 = P/v
//Ratio of tensions in the belt, log(T1/T2) = mu*theta, or T1-T2*exp(mu*theta) = 0
A=[1 -1; 1 -exp(mu*theta)]
B=[P/v; 0]
V=A \ B
T1=V(1) //N
T2=V(2) //N
//Calculating the width of the belt
b=T1/(sigma*t-t*1*rho*v^2)*1000 //mm
//Results:
printf("\n\n Width of the belt, b = %.1f mm.\n\n",b)