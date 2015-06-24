//To find gyroscopic couple
clc
//Given:
m=8*1000 //kg
k=0.6, R=75 //m
N=1800 //rpm
v=100*1000/3600 //m/s
//Solution:
//Calculating the angular speed of the rotor
omega=2*%pi*N/60 //rad/s
//Calculating the mass moment of inertia of the rotor
I=m*k^2 //kg-m^2
//Calculating the angular velocity of precession
omegaP=v/R //rad/s
//Calculating the gyroscopic couple
C=I*omega*omegaP/1000 //kN-m
//Results:
printf("\n\n Gyroscopic couple, C = %.3f kN-m.\n\n",C)