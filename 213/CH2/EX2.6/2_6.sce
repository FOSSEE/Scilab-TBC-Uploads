//To Find the Angular Acceleration
clc
//Given:
N0=0,N=2000 //rpm
t=20 //seconds
//Solution:
//Calculating the angular velocities
omega0=0, omega=2*%pi*N/60 //rad/s
//Calculating the angular acceleration
alpha=(omega-omega0)/t //rad/s^2
//Calculating the angular distance moved by the wheel during 2000 rpm
theta=(omega0+omega)*t/2 //rad
//Calculating the number of revolutions made by the wheel
n=theta/(2*%pi)
//Results:
printf("\n\n The angular acceleration of the wheel, alpha = %.3f rad/s^2.\n",alpha)
printf(" The wheel makes n = %.1f revolutions.\n\n",n)