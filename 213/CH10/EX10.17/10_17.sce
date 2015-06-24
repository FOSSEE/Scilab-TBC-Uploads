//To find power absorbed in friction
clc
//Given:
W=20*1000 //N
alpha=120/2 //degrees
Pn=0.3 //N/mm^2
N=200 //rpm
mu=0.1
//Solution:
//Calculating the angular speed of the shaft
omega=2*%pi*N/60 //rad/s
//Calculating the inner radius of the bearing surface
r2=sqrt(W/(3*%pi*Pn)) //mm
//Calculating the outer radius of the bearing surface
r1=2*r2 //mm
//Calculating the total frictional torque assuming uniform pressure
T=2/3*mu*W*(1/sind(alpha))*(r1^3-r2^3)/(r1^2-r2^2)/1000 //N-m
//Calculating the power absorbed in friction
P=T*omega/1000 //kW
//Results:
printf("\n\n Power absorbed in friction, P = %.3f kW.\n\n",P)