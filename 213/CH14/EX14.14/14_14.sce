//To find gyroscopic couple and reaction
clc
//Given:
I=180 //kg-m^2
D=1.8, R=D/2, x=1.5 //m
v=95*1000/3600 //m/s
t=0.1 //s
//Solution:
//Gyroscopic couple set up:
//Calculating the angular velocity of the locomotive
omega=v/R //rad/s
//Calculating the amplitude
A=1/2*6 //mm
//Calculating the maximum velocity while falling
vmax=2*%pi/t*A/1000 //m/s
//Calculating the maximum angular velocity of tilt of the axle or angular velocity of precession
omegaPmax=vmax/x //rad/s
//Calculating the gyroscopic couple set up
C=I*omega*omegaPmax //N-m
//Calculating the reaction between the wheel and rail due to the gyroscopic couple
P=C/x //N
//Results:
printf("\n\n Gyroscopic couple set up, C = %.1f N-m.\n\n",C)
printf(" Reaction between the wheel and rail due to the gyroscopic couple, P = %d N.\n\n",P)