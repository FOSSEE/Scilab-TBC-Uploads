//To find maximum acceleration during pitching
clc
//Given:
m=2000 //kg
N=3000 //rpm
k=0.5, R=100 //m
v=16.1*1855/3600 //m/s
//Solution:
//Calculating the angular speed of the rotor
omega=2*%pi*N/60 //rad/s
//Gyroscopic couple:
//Calculating the mass moment of inertia of the rotor
I=m*k^2 //kg-m^2
//Calculating the angular velocity of precession
omegaP=v/R //rad/s
//Calculating the gyroscopic couple
C=I*omega*omegaP/1000 //kN-m
//Torque during pitching:
tp=50 //s
phi=12/2*%pi/180 //rad
//Calculating the angular velocity of simple harmonic motion
omega1=2*%pi/tp //rad/s
//Calculating the maximum angular velocity of precession
omegaPmax=phi*omega1 //rad/s
//Calculating the maximum gyroscopic couple during pitching
Cmax=I*omega*omegaPmax //N-m
//Calculating the maximum acceleration during pitching
alphamax=phi*omega1^2 //rad/s^2
//Results:
printf("\n\n When the rotor rotates clockwise when looking from a stern the ship steers to the right, the effect of the reactive gyroscopic couple is to raise the stern and lower the bow.\n\n")
printf(" Torque during pitching, Cmax = %d N-m.\n\n",Cmax)
printf(" Maximum acceleration during pitching, alphamax = %.5f rad/s^2.\n\n",alphamax)