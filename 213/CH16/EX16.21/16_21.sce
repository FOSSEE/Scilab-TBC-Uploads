//To find speed and number of rivets
clc
//Given:
P=3 //kW
m=150 //kg
k=0.6 //m
N1=300 //rpm
//Solution:
//Calculating the angular speed of the flywheel before riveting
omega1=2*%pi*N1/60 //rad/s
//Speed of the flywheel immediately after riveting:
//Calculating the energy supplied by the motor
E2=P*1000 //N-m/s
//Calculating the energy absorbed during one riveting operation which takes 1 second
E1=10000 //N-m
//Calculating the energy to be supplied by the flywheel for each riveting operation per second
deltaE=E1-E2 //N-m
//Calculating the angular speed of the flywheel immediately after riveting
omega2=sqrt(omega1^2-(2*deltaE/(m*k^2))) //rad/s
//Calculating the corresponding speed in rpm
N2=omega2*60/(2*%pi) //rpm
//Calculating the number of rivets that can be closed per minute
n=E2/E1*60 //Number of rivets that can be closed per minute
//Results:
printf("\n\n Speed of the flywheel immediately after riveting, N2 = %.1f rpm.\n\n",N2)
printf(" Number of rivets that can be closed per minute = %d rivets.\n\n",n)