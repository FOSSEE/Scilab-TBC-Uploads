//To find the gyroscopic effects
clc
//Given:
m=5*1000 //kg
N=1000 //rpm
k=0.5 //m
//Solution:
//Calculating the angular speed of the rotor
omega=2*%pi*N/60 //rad/s
//When the ship steers to the left:
v=30*1000/3600 //m/s
R=60 //m
//Calculating the angular velocity of precession
omegaP=v/R //rad/s
//Calculating the mass moment of inertia of the rotor
I=m*k^2 //kg-m^2
//Calculating the gyroscopic couple
C=I*omega*omegaP/1000 //kN-m
//Results:
printf("\n\n When the rotor rotates in a clockwise direction when viewed from from the stern and the ship steers to the left, the effect of reactive gyroscopic couple is to raise the bow and lower the stern.\n\n")
//When the ship pitches with the bow descending:
phi=6*%pi/180 //rad
tp=20 //s
//Calculating the angular velocity of simple harmonic motion
omega1=2*%pi/tp //rad/s
//Calculating the maximum velocity of precession
omegaPmax=phi*omega1 //rad/s
//Calculating the maximum gyroscopic couple
Cmax=I*omega*omegaPmax //N-m
//Results:
printf(" Since the ship is pitching with the low bow descending, therefore the effect of this maximum gyroscopic couple is to turn the ship towards port side.\n\n")
//When the ship rolls:
omegaP=0.03 //rad/s
//Calculating the gyroscopic couple
C=I*omega*omegaP //N-m
//Results:
printf(" In case of rolling of a ship, the axis of precession is always parallel to the axis of spin for all positions, therefore there is no effect of gyroscopic couple.\n\n")
//Calculating the maximum angular acceleration during pitching
alphamax=phi*omega1^2 //rad/s^2
//Results:
printf(" Maximum angular acceleration during pitching, alphamax = %.2f rad/s^2.\n\n",alphamax)