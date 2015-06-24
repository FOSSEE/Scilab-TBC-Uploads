//To estimate power lost in friction
clc
//Given:
D=150/1000,R=D/2 //m
N=100 //rpm
W=20*1000 //N
mu=0.05
//Solution:
//Calculating the angular speed of the shaft
omega=2*%pi*N/60 //rad/s
//Calculating the total frictional torque for uniform pressure distribution
T=2/3*mu*W*R //N-m
//Calculating the power lost in friction
P=T*omega //W
//Results:
printf("\n\n Power lost in friction, P = %.1f W.\n\n",P)