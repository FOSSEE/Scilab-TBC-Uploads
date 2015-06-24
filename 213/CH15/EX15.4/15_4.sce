//To find velocity and acceleration
clc
//Given:
r=0.3, l=1.5 //m
N=180 //rpm
theta=40 //degrees
//Solution:
//Calculating the angular speed of the piston
omega=2*%pi*N/60 //rad/s
//Velocity of the piston:
//Calculating the ratio of lengths of the connecting rod and crank
n=l/r
//Calculating the velocity of the piston
vP=omega*r*(sind(theta)+sind(2*theta)/(2*n)) //m/s
//Calculating the acceleration of the piston
aP=omega^2*r*(cosd(theta)+cosd(2*theta)/n) //m/s^2
//Position of the crank for zero acceleration of the piston:
ap1=0
//Calculating the position of the crank from the inner dead centre for zero acceleration of the piston
//We have, ap1 = omega^2*r*(cosd(theta1)+cosd(2*theta1)/n), or 2*(cosd(theta1))^2+n*cosd(theta1)-1 = 0
a=2, b=n, c=-1
costheta1=(-b+sqrt(b^2-4*a*c))/(2*a)
//Calculating the crank angle from the inner dead centre for zero acceleration of the piston
theta1=acosd(costheta1) //degrees
//Results:
printf("\n\n Velocity of the piston, vP = %.2f m/s.\n\n", vP)
printf(" Acceleration of the piston, aP = %.2f m/s^2.\n\n",aP)
printf(" Position of the crank for zero acceleration of the piston, theta1 = %.2f degrees or %.2f degrees.\n\n",theta1,360-theta1)