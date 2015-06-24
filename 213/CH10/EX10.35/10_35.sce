//To find mass and size of shoes
clc
//Given:
P=15*1000 //W
N=900 //rpm
n=4, mu=0.25
R=150/1000, r=120/1000 //m
theta=60 //degrees
p=0.1 //N/mm^2
//Solution:
//Calculating the angular speed of the clutch
omega=2*%pi*N/60 //rad/s
//Calculating the speed at which the engagement begins
omega1=3/4*omega //rad/s
//Calculating the torque transmitted at the running speed
T=P/omega //N-m
//Calculating the mass of the shoes
m=T/(n*mu*(omega^2*r-omega1^2*r)*R) //kg
//Calculating the contact length of shoes
l=(theta*%pi/180)*R*1000 //mm
//Calculating the centrifugal force acting on each shoe
Pc=m*omega^2*r //N
//Calculating the inward force on each shoe exerted by the spring
Ps=m*omega1^2*r //N
//Calculating the width of the shoes
b=(Pc-Ps)/(l*p) //mm
//Results:
printf("\n\n Mass of the shoes, m = %.2f kg.\n",m)
printf(" Width of the shoes, b = %.1f mm.\n\n",b)