//To Find the Angular Velocity, Time and Acceleration
clc
//Given:
x1=.75,x2=2 //m
v1=11,v2=3 //m/s
//Solution:
//We have, 11=omega*sqrt(r^2-.75^2) and 3=omega*sqrt(r^2-2^2).
//These upon solving yield r^2-(121/omega^2)-0.5625=0 and r^2-(9/omega^2)-4=0.
//Take r^2=x and (1/omega^2)=y and the equation become x-121y=0.5625 and x-9y=4.
//Variables Matrix
A=[1 -121; 1 -9]
//Constants Matrix
B=[.5625; 4]
V=A \ B
//Calculating Amplitude of the Particle
r=sqrt(V(1)) //m
//Calculating Angular Velocity of the Particle
omega=sqrt(1/V(2)) //rad/s
//Calculating Periodic Time
tp=2*%pi/omega //seconds
//Calculating Maximum Acceleration
amax=omega^2*r //m/s^2
//Results:
printf("\n\n The Angular Velocity, omega = %.1f rad/s.\n",omega)
printf(" The Periodic Time, tp = %.1f s.\n",tp)
printf(" The Maximum Acceleration, amax = %.2f m/s^2.\n\n",amax)