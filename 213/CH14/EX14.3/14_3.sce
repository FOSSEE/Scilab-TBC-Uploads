//To find gyroscopic couple
clc
//Given:
R=50, k=0.3 //m
v=200*1000/3600 //m/s
m=400 //kg
N=2400 //rpm
//Solution:
//Calculating the angular speed of the engine
omega=2*%pi*N/60 //rad/s
//Calculating the mass moment of inertia of the engine and the propeller
I=m*k^2 //kg-m^2
//Calculating the angular velocity of precession
omegaP=v/R //rad/s
//Calculating the gyroscopic couple acting on the aircraft
C=I*omega*omegaP/1000 //kN-m
//Results:
printf("\n\n Gyroscopic couple acting on the aircraft, C = %.3f kN-m.\n\n",C)
printf(" The effect of the gyroscopic couple is to lift the nose upwards and tail downwards.\n\n")