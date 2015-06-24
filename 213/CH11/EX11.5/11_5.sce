//To find force and power
clc
//Given:
W=9*1000, T1=W //N
d=300/1000 //m
N=20 //rpm
mu=0.25
//Solution:
//Force required by the man:
//Calculating the angle of contact
theta=2.5*2*%pi //rad
//Calculating the force required by the man
T2=T1/exp(mu*theta) //N
//Power to raise the casting:
//Calculating the velocity of the rope
v=%pi*d*N/60 //m/s
//Calculating the power to raise the casting
P=(T1-T2)*v/1000 //kW
//Results:
printf("\n\n Force required by the man, T2 = %.2f N.\n\n",T2)
printf(" Power to raise the casting, P = %.3f kW.\n\n",P)