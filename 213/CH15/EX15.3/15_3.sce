//To find crank angle and velocity
clc
//Given:
r=300/1000, l=1 //m
N=200 //rpm
//Solution:
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Crank angle at which the maximum velocity occurs:
//Calculating the ratio of length of connecting rod to crank radius
n=l/r
//Velocity of the piston, vP = omega*r*(sind(theta)+sind(2*theta)/(2*n))    .....(i)
//For maximum velocity, d(vP)/d(theta) = 0                                  .....(ii)
//Substituting (i) in (ii), we get, 2(cosd(theta))^2+n*cosd(theta)-1 = 0
a=2, b=n, c=-1
costheta=(-b+sqrt(b^2-4*a*c))/(2*a)
//Calculating the crank angle from the inner dead centre at which the maximum velocity occurs
theta=round(acosd(costheta)) //degrees
//Calculating the maximum velocity of the piston:
vPmax=omega*r*(sind(theta)+sind(2*theta)/(2*n)) //m/s
//Results:
printf("\n\n Crank angle from the inner dead centre at which the maximum velocity occurs, theta = %d degrees.\n\n",theta)
printf(" Maximum velocity of the piston, vP(max) = %.2f m/s.\n\n",vPmax)