//To find speed of precession
clc
//Given:
d=300/1000, r=d/2, l=600/1000 //m
m=5 //kg
N=300 //rpm
//Solution:
//Calculating the angular speed of the disc
omega=2*%pi*N/60 //rad/s
//Calculating the mass moment of inertia of the disc, about an axis through its centre of gravity and perpendicular to the plane of the disc
I=m*r^2/2 //kg-m^2
//Calculating the couple due to mass of disc
C=m*9.81*l //N-m
//Calculating the speed of precession
omegaP=C/(I*omega) //rad/s
//Results:
printf("\n\n Speed of precession, omegaP = %.1f rad/s.\n\n",omegaP)