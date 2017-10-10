clc;
m=10;//kg, mass of disk
r=200;//mm, radius of disk
r=r/1000;//m, conversion into meter
Tn=1.13;//s, Period of torsional vibration for disk
T=1.93;//s, Period of torsional vibration for gear
theta=90;//degrees
theta=theta*%pi/180;//rad
//From theory we get
I=1/2*m*r^2;//kg, 
K=(2*%pi/Tn)^2*r;//N.m/rad , torsional spring constant
printf("torsional spring constant = %.2f N.m/rad \n",K);
//For gear
Igear=(T/2/%pi)^2*K;//kg.m^2, moment of inertia of gear
printf("moment of inertia of gear = %.3f kg.m^2\n",Igear);
//Wm=Theta*Wn=theta*2*%pi/T

Wm=theta*2*%pi/T;//rad/s MAximum angular velocity
printf("Maximum angular velocity = %.2f rad/s \n",Wm);

