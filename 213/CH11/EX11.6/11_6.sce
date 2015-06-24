//To find length and power transmitted
clc
//Given:
d1=450/1000, r1=d1/2, d2=200/1000, r2=d2/2, x=1.95 //m
N1=200 //rpm
T1=1*1000 //N
mu=0.25
//Solution:
//Calculating the speed of the belt
v=%pi*d1*N1/60 //m/s
//Length of the belt:
//Calculating the length of the crossed belt
L=%pi*(r1+r2)+2*x+(r1+r2)^2/x //m
//Angle of contact between the belt and each pulley:
//Calculating the angle alpha
alpha=asin((r1+r2)/x)*180/%pi //degrees
//Calculating the angle of contact between the belt and each pulley
theta=(180+2*alpha)*%pi/180 //radians
//Power transmitted:
//Calculating the tension in the slack side of the belt
T2=T1/exp(mu*theta) //N
//Calculating the power transmitted
P=(T1-T2)*v/1000 //kW
//Results:
printf("\n\n Length of the belt, L = %.3f m.\n\n",L)
printf(" Angle of contact between the belt and each pulley, theta = %.3f rad.\n\n",theta)
printf(" Power transmitted, P = %.2f kW.\n\n",P)