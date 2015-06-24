//To find turning moment
clc
//Given:
D=300/1000, L=450/1000, r=L/2, d=50/1000, l=1.2 //m
N=200 //rpm
mR=225 //kg
theta=125 //degrees
p1=30*1000, p2=1.5*1000 //N/m^2
//Solution:
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Calculating the area of the piston
A1=%pi/4*D^2 //m^2
//Calculating the area of the piston rod
a=%pi/4*d^2 //m^2
//Calculating the force on the piston due to steam pressure
FL=round(p1*A1-p2*(A1-a)) //N
//Calculating the ratio of lengths of connecting rod and crank
n=l/r
//Calculating the inertia force on the reciprocating parts
FI=mR*omega^2*r*(cosd(theta)+cosd(2*theta)/n) //N
//Calculating the net force on the piston or piston effort
FP=FL-FI+mR*9.81 //N
//Calculating the angle of inclination of the connecting rod to the line of stroke
phi=asind(sind(theta)/n) //degrees
//Calculating the effective turning moment on the crank shaft
T=FP*sind(theta+phi)/cosd(phi)*r //N-m
//Results:
printf("\n\n Effective turning moment of the crank shaft, T = %.1f N-m.\n\n",T)