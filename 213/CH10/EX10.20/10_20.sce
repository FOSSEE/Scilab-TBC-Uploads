//To find power absorbed
clc
//Given:
d1=400,r1=d1/2,d2=250,r2=d2/2 //mm
p=0.35 //N/mm^2
mu=0.05
N=105 //rpm
W=150*1000 //N
//Solution:
//Calculating the angular speed of the shaft
omega=2*%pi*N/60 //rad/s
//Calculating the total frictional torque transmitted for uniform pressure
T=2/3*mu*W*(r1^3-r2^3)/(r1^2-r2^2)/1000 //N-m
//Calculating the power absorbed
P=T*omega/1000 //kW
//Calculating the number of collars required
n=W/(p*%pi*(r1^2-r2^2))
//Results:
printf("\n\n Power absorbed, P = %.2f kW.\n",P)
printf(" Number of collars required, n = %d.\n\n",n+1)