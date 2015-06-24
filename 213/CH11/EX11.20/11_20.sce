//To find number of ropes required
clc
//Given:
P=600 //kW
d=4 //m
N=90 //rpm
theta=160*%pi/180 //radians
funcprot(0)
beta=45/2 //degrees
mu=0.28
m=1.5 //kg/m
T=2400 //N
//Solution:
//Calculating the velocity of the rope
v=%pi*d*N/60 //m/s
//Calculating the centrifugal tension
TC=m*v^2 //N
//Calculating the tension in the tight side of the rope
T1=T-TC //N
//Calculating the tension in the slack side of the belt
T2=T1/exp(mu*theta*(1/sind(beta))) //N
//Calculating the power transmitted per rope
P1=(T1-T2)*v/1000 //Power transmitted per rope, kW
//Calculating the number of ropes
n=P/P1 //Number of ropes
//Results:
printf("\n\n Number of ropes required = %d.\n\n",n+1)