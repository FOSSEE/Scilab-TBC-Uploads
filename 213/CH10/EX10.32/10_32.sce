//To find axial force and face width
clc
//Given:
P=45*1000 //W
N=1000 //rpm
alpha=12.5 //degrees
D=500/1000, R=D/2 //m
mu=0.2
pn=0.1 //N/mm^2
//Solution:
//Calculating the angular speed of the shaft
omega=2*%pi*N/60 //rad/s
//Calculating the torque developed by the clutch
T=P/omega //N-m
//Calculating the normal load acting on the friction surface
Wn=T/(mu*R) //N
//Calculating the axial spring force necessary to engage the clutch
We=Wn*(sind(alpha)+mu*cosd(alpha)) //N
//Calculating the face width required
b=Wn/(pn*2*%pi*R*1000) //mm
//Results:
printf("\n\n Axial force necessary to engage the clutch, We = %d N.\n",We)
printf(" Face width required, b = %.1f mm.\n\n",b)