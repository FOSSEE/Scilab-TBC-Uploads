//To find speed of pulley
clc
//Given:
d=3.6 //m
n=15 //Number of grooves
funcprot(0)
beta=45/2 //degrees
theta=170*%pi/180 //radians
mu=0.28
T=960 //N
m=1.5 //kg/m
//Solution:
//Speed of the pulley:
//Calculating the velocity of the rope
v=sqrt(T/(3*m)) //m/s
//Calculating the speed of the pulley
N=v*60/(%pi*d) //rpm
//Power transmitted
//Calculating the centrifugal tension for maximum power
TC=T/3 //N
//Calculating the tension in the tight side of the rope
T1=T-TC //N
//Calculating the tension in the slack side of the rope
T2=T1/exp(mu*theta*(1/sind(beta))) //N
//Calculating the power transmitted per rope
P1=(T1-T2)*v/1000 //Power transmitted per rope, kW
//Calculating the total power transmitted
P=P1*n //Total power transmitted, kW
//Results:
printf("\n\n Speed of the pulley for maximum power, N = %.1f rpm.\n\n",N)
printf(" Power transmitted = %.2f kW.\n\n",P)