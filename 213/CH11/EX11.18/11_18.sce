//To find maximum power transmitted
clc
//Given:
funcprot(0)
beta=30/2 //degrees
t=20/1000, b=20/1000 //m
m=0.35 //kg/m
sigma=1.4*10^6 //N/m^2
theta=140*%pi/180 //radians
mu=0.15
//Solution:
//Calculating the maximum tension in the belt
T=sigma*b*t //N
//Calculating the velocity of the belt for maximum power to be transmitted
v=sqrt(T/(3*m)) //m/s
//Calculating the centrifugal tension
TC=T/3 //N
//Calculating the tension in the tight side of the belt
T1=T-TC //N
//Calculating the tension in the slack side of the belt
T2=T1/exp(mu*theta*(1/sind(beta))) //N
//Calculating the maximum power transmitted
P=(T1-T2)*v/1000 //kW
//Results:
printf("\n\n Maximum power transmitted, P = %.2f kW.\n\n",P)