//To find the resultant reaction
clc
//Given:
d=150/1000, r=d/2, x=100/1000 //m
m=5 //kg
N=1000, NP=60 //rpm
//Solution:
//Calculating the angular speed of the disc
omega=2*%pi*N/60 //rad/s
//Calculating the speed of precession of the axle
omegaP=2*%pi*NP/60 //rad/s
//Calculating the mass moment of inertia of the disc, about an axis through its centre of gravity and perpendicular to the plane of disc
I=m*r^2/2 //kg-m^2
//Calculating the gyroscopic couple acting on the disc
C=I*omega*omegaP //N-m
//Calculating the force at each bearing due to the gyroscopic couple
F=C/x //N
//Calculating the reactions at the bearings A and B
RA=m/2*9.81 //N
RB=RA //N
//Resultant reaction at each bearing:
//Calculating the resultant reaction at the bearing A
RA1=F+RA //N
//Calculating the resultant reaction at the bearing B
RB1=F-RB //N
//Results:
printf("\n\n Resultant reaction at the bearing A, RA1 = %.1f N, upwards.\n\n",RA1)
printf(" Resultant reaction at the bearing B, RB1 = %.1f N, downwards.\n\n", RB1)