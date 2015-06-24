//To find greatest power transmitted
clc
//Given:
theta=120*%pi/180 //radians
b=100/1000, t=6/1000 //m
rho=1000 //kg/m^3
mu=0.3
sigma=2*10^6 //N/m^2
//Solution:
//Speed of the belt for greatest power:
//Calculating the maximum tension in the belt
T=sigma*b*t //N
//Calculating the mass of the belt per metre length
l=1 //m
m=b*t*l*rho //kg/m
//Calculating the speed of the belt for greatest power
v=sqrt(T/(3*m)) //m/s
//Greatest power which the belt can transmit
//Calculating the centrifugal tension for maximum power to be transmitted
TC=T/3 //N
//Calculating the tension in the tight side of the belt
T1=T-TC //N
//Calculating the tension in the slack side of the belt
T2=T1/exp(mu*theta) //N
//Calculating the greatest power which the belt can transmit
P=(T1-T2)*v/1000 //kW
//Results:
printf("\n\n Speed of the belt for greatest power, v = %.2f m/s.\n\n",v)
printf(" Greatest power which the belt can transmit, P = %.2f kW.\n\n",P)