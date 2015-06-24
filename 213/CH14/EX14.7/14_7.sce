//To find gyroscopic couple and acceleration
clc
//Given:
m=20*1000 //kg
k=0.6 //m
N=2000 //rpm
phi=6*%pi/180 //rad
tp=30 //s
//Solution:
//Calculating the angular speed of the rotor
omega=2*%pi*N/60 //rad/s
//Maximum gyroscopic couple:
//Calculating the mass moment of inertia of the rotor
I=m*k^2 //kg-m^2
//Calculating the angular velocity of the simple harmonic motion
omega1=2*%pi/tp //rad/s
//Calculating the maximum angular velocity of precession
omegaPmax=phi*omega1 //rad/s
//Calculating the maximum gyroscopic couple
Cmax=I*omega*omegaPmax/1000 //kN-m
//Calculating the maximum angular acceleration during pitching
alphamax=phi*omega1^2 //Maximum angular acceleration during pitching, rad/s^2
//Results:
printf("\n\n Maximum gyroscopic couple, Cmax = %.3f kN-m.\n\n",Cmax)
printf(" Maximum angular acceleration during pitching = %.4f rad/s^2.\n\n",alphamax)
printf(" When the rotation of the rotor is clockwise when looking from the left and when the bow is rising, then the reactive gyroscopic couple acts in the direction which tends to turn the bow towrds right.\n\n")