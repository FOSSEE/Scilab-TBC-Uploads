//To find diameter and number of collars
clc
//Given:
d2=300/1000,r2=d2/2 //m
W=200*1000 //N
N=75 //rpm
mu=0.05
p=0.3 //N/mm^2
P=16*1000 //W
//Solution:
//Calculating the angular velocity of the shaft
omega=2*%pi*N/60 //rad/s
//Calculating the total frictional torque transmitted
T=P/omega //N-m
//Calculating the external diameter of the collar
//We have, T=2/3*mu*W*(r1^3-r2^3)/(r1^2-r2^2), or (2*mu*W)*r1^2-(3*T-2*mu*W*r2)*r1+(2*mu*W*r2^2-3*T*r2)=0
A=2*mu*W, B=-(3*T-2*mu*W*r2), C=2*mu*W*r2^2-3*T*r2
r1=(-B+sqrt(B^2-4*A*C))/(2*A)*1000 //mm
d1=2*r1 //mm
//Calculating the number of collars
n=W/(p*%pi*(r1^2-(r2*1000)^2))
//Results:
printf("\n\n External diameter of the collar, d1 = %d mm.\n",d1)
printf(" Number of collars, n = %d.\n\n",n+1)