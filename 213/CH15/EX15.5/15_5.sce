//To find linear and angualr velocity and acceleration
clc
//Given:
r=150/1000, l=600/1000 //m
theta=60 //degrees
N=450 //rpm
//Solution:
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Velocity and acceleration of the slider:
//Calculating the ratio of length of connecting rod and crank
n=l/r
//Calculating the velocity of the slider
vP=omega*r*(sind(theta)+sind(2*theta)/(2*n)) //m/s
//Calculating the acceleration of the slider
aP=omega^2*r*(cosd(theta)+cosd(2*theta)/n) //m/s^2
//Angular velocity and angular acceleration of the connecting rod:
//Calculating the angular velocity of the connecting rod
omegaPC=omega*cosd(theta)/n //rad/s
//Calculating the angular acceleration of the connecting rod
alphaPC=round(omega^2*sind(theta)/n) //rad/s^2
//Results:
printf("\n\n Velocity of the slider, vP = %.1f m/s.\n\n",vP)
printf(" Acceleration of the slider, aP = %.2f m/s^2.\n\n",aP)
printf(" Angular velocity of the connecting rod, omegaPC = %.1f rad/s.\n\n",omegaPC)
printf(" Angular acceleration of the connecting rod, alphaPC = %d rad/s^2.\n\n",alphaPC)