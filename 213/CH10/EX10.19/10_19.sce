//To find power absorbed in friction
clc
//Given:
n=6
d1=600,r1=d1/2,d2=300,r2=d2/2 //mm
W=100*1000 //N
mu=0.12
N=90 //rpm
//Solution:
//Calculating the angular speed of the engine
omega=2*%pi*N/60 //rad/s
//Power absorbed in friction assuming uniform pressure:
//Calculating the total frictional torque transmitted
T=2/3*mu*W*(r1^3-r2^3)/(r1^2-r2^2)/1000 //N-m
//Calculating the power absorbed in friction
P1=T*omega/1000 //Power absorbed in friction assuming uniform pressure, kW
//Power absorbed in friction assuming uniform wear:
//Calculating the total frictional torque transmitted
T=1/2*mu*W*(r1+r2)/1000 //N-m
//Calculating the power absorbed in friction
P2=T*omega/1000 //Power absorbed in friction assuming uniform wear, kW
//Results:
printf("\n\n Power absorbed in friction assuming uniform pressure, P = %.1f kW.\n",P1)
printf(" Power absorbed in friction assuming uniform wear, P = %.2f kW.\n\n",P2)