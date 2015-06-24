//To find power trnasmitted
clc
//Given:
x=4.8, d1=1.5, d2=1 //m
T0=3*1000 //N
m=1.5 //kg/m
mu=0.3
N2=400 //rpm
//Solution:
//Calculating the velocity of the belt
v=%pi*d2*N2/60 //m/s
//Calculating the centrifugal tension
TC=m*v^2 //N
//Calculating the angle alpha
alpha=asin((d1-d2)/(2*x))*180/%pi //degrees
//Calculating the angle of lap for the smaller pulley
theta=(180-2*alpha)*%pi/180 //radians
//Calculating the tensions in the belt
//Initial tension, T0 = (T1+T2+2*TC)/2, or T1+T2 = 2*(T0-TC)
//Ratio of tensions in the belt, log(T1/T2) = mu*theta, or T1-T2*exp(mu*theta) = 0
A=[1 1; 1 -exp(mu*theta)]
B=[2*(T0-TC); 0]
V=A \ B
T1=V(1) //N
T2=V(2) //N
//Calculating the power transmitted
P=(T1-T2)*v/1000 //kW
//Results:
printf("\n\n Power transmitted, P = %.1f kW.\n\n",P)