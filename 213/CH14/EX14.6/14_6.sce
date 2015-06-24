//To find gyroscopic couple and effect
clc
//Given:
m=3500 //kg
k=0.45 //m
N=3000 //rpm
//Solution:
//Calculating the angular speed of the rotor
omega=2*%pi*N/60 //rad/s
//When the ship is steering to the left:
R=100 //m
v=36*1000/3600 //m/s
//Calculating the mass moment of inertia of the rotor
I=m*k^2 //kg-m^2
//Calculating the angular velocity of precession
omegaP=v/R //rad/s
//Calculating the gyroscopic couple
C=I*omega*omegaP/1000 //kN-m
//Results:
printf("\n\n Gyroscopic couple when the ship is steering to the left, C = %.2f kN-m.\n\n",C)
printf(" When the rotor rotates clockwise and the ship takes a left turn, the effect of the reactive gyroscopic couple is to raise the bow and lower the stern.\n\n")
//When the ship is pitching with the bow falling:
tp=40 //s
//Calculating the amplitude of swing
phi=12/2*%pi/180 //rad
//Calculating the angular velocity of the simple harmonic motion
omega1=2*%pi/tp //rad/s
//Calculating the maximum angular velocity of precession
omegaP=phi*omega1 //rad/s
//Calculating the gyroscopic couple
C=I*omega*omegaP/1000 //kN-m
//Results:
printf(" Gyroscopic couple when the ship is pitching with the bow falling, C = %.3f kN-m.\n\n",C)
printf(" When the bow is falling, the effect of the reactive gyroscopic couple is to move the ship towards port side.\n\n")