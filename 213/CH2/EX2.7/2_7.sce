//To Find Velocity and Acceleration
clc
//Given:
r=1.5 //m
N0=1200,N=1500 //rpm
t=5 //seconds
//Solution:
//Calculating the angular velocities
omega0=2*%pi*N0/60,omega=2*%pi*N/60 //rad/s
//Calculating the linear velocity at the beginning
v0=r*omega0 //m/s
//Calculating the linear velocity at the end of 5 seconds
v5=r*omega //m/s
//Calculating the angular acceleration
alpha=(omega-omega0)/t //ad/s^2
//Calculating the tangential acceleration after 5 seconds
TangentialAcceleration=alpha*(r/2) //m/s^2
//Calculating the radial acceleration after 5 seconds
RadialAcceleration=(omega^2)*(r/2) //m/s^2
//Results:
printf("\n\n The linear velocity at the beginning, v0 = %.1f m/s.\n",v0)
printf(" The linear velocity after 5 seconds, v5 = %.1f m/s.\n",v5)
printf(" The tangential acceleration after 5 seconds is %.1f m/s^2.\n",TangentialAcceleration)
printf(" The radial acceleration after 5 seconds is %d m/s^2.",RadialAcceleration)