//To find power transmitted
clc
//Given:
d=60,r=d/2 //mm
W=2000 //N
mu=0.03
N=1440 //rpm
//Solution:
//Calculating the angular speed of the shaft
omega=2*%pi*N/60 //rad/s
//Calculating the torque transmitted
T=mu*W*(r/1000) //N-m
//Calculating the power transmitted
P=T*omega //W
//Results:
printf("\n\n The power transmitted, P = %.1f W.\n\n",P)