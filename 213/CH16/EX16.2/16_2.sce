//To find angular acceleration and KE
clc
//Given:
k=1 //m
m=2500 //kg
T=1500 //N-m
//Solution:
//Angular acceleration of the flywheel:
//Calculating the mass moment of inertia of the flywheel
I=m*k^2 //kg-m^2
//Calculating the angular acceleration of the flywheel
alpha=T/I //rad/s^2
//Kinetic energy of the flywheel:
omega1=0 //Angular speed at rest
//Calculating the angular speed after 10 seconds
omega2=omega1+alpha*10 //rad/s
//Calculating the kinetic energy of the flywheel
KE=1/2*I*(omega2)^2/1000 //Kinetic energy of the flywheel, kN-m
//Results:
printf("\n\n Angular acceleration of the flywheel, alpha = %.1f rad/s^2.\n\n",alpha)
printf(" Kinetic energy of the flywheel = %d kN-m.\n\n",KE)