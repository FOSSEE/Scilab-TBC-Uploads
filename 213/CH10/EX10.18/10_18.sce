//To find power lost in friction
clc
//Given:
D=200/1000,R=D/2 //m
W=30*1000 //N
alpha=120/2 //degrees
mu=0.025
N=140 //rpm
//Solution:
//Calculating the angular speed of the shaft
omega=2*%pi*N/60 //rad/s
//Power lost in friction assuming uniform pressure:
//Calculating the total frictional torque
T=2/3*mu*W*R*(1/sind(alpha)) //N-m
//Calculating the power lost in friction
P1=T*omega //Power lost in friction, W
//Power lost in friction assuming uniform wear:
//Calculating the total frictional torque
T=1/2*mu*W*R*(1/sind(alpha)) //N-m
//Calculating the power lost in friction
P2=T*omega //Power lost in friction, W
//Resluts:
printf("\n\n Power lost in friction assuming uniform pressure, P = %d W.\n",P1)
printf(" Power lost in friction assuming uniform wear, P = %.1f W.\n\n",P2)