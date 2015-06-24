//To find the angular acceleration and KE
clc
//Given:
k=1 //m
m=2500 //kg
T=1500 //N-m
//Solution:
//Calculating the mass moment of inertia of the flywheel
I=m*k^2 //kg-m^2
//Calculating the angular acceleration of the flywheel
alpha=T/I //rad/s^2
//The angular speed at start
omega1=0
t=10 //seconds
//Calculating the angular speed of the flywheel after t=10 seconds from start
omega2=omega1+alpha*t //rad/s
//Calculating the kinetic energy of the flywheel after 10 seconds from start
E=1/2*I*omega2^2/1000 //kJ
//Results:
printf("\n\n The angular acceleration of the flywheel, alpha = %.1f rad/s^2.\n",alpha)
printf(" The kinetic energy of the flywheel, E = %d kJ.\n\n",E)