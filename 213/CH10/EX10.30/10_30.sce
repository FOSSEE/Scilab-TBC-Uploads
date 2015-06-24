//To find maximum power transmitted
clc
//Given:
n1=3, n2=2, n=4, mu=0.3
d1=240, r1=d1/2, d2=120, r2=d2/2 //mm
P=25*1000 //W
N=1575 //rpm
//Solution:
//Calculating the angular speed of the shaft
omega=2*%pi*N/60 //rad/s
//Calculating the torque transmitted
T=P/omega //N-m
//Calculating the mean radius of the contact surface, for uniform pressure
R=2/3*(r1^3-r2^3)/(r1^2-r2^2)/1000 //m
//Calculating the total spring load
W1=T/(n*mu*R) //N
//Calculating the maximum power transmitted:
//Given:
ns=6 //Number of springs
c=8 //Contact surfaces of the spring
w=1.25 //Wear on each contact surface, mm
k=13*1000 //Stiffness of each spring, N/m
//Calculating the total wear
Tw=c*w/1000 //Total wear, m
//Calculating the reduction in spring force
Rs=Tw*k*ns //N
//Calculating the new axial load
W2=W1-Rs //N
//Calculating the mean radius of the contact surfaces for uniform wear
R=(r1+r2)/(2*1000) //m
//Calculating the torque transmitted
T=n*mu*W2*R //N-m
//Calculating the maximum power transmitted
P=T*omega/1000 //kw
//Results:
printf("\n\n Total spring load, W = %d N.\n",W1)
printf(" Maximum power that can be transmitted, P = %.2f kW.\n\n",P)