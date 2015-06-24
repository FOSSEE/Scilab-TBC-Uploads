//To find dimensions and axial load
clc
//Given:
P=90*1000 //W
N=1500 //rpm
alpha=20 //degrees
mu=0.2
D=375, R=D/2 //mm
pn=0.25 //N/mm^2
//SOlution:
//Calculating the angular speed of the clutch
omega=2*%pi*N/60 //rad/s
//Calculating the torque transmitted
T=P/omega*1000 //N-mm
//Calculating the width of the bearing surface
b=T/(2*%pi*mu*pn*R^2) //mm
//Calculating the external and internal radii of the bearing surface
//We know that, r1+r2 = 2*R, and r1-r2 = b*sind(alpha)
A=[1 1; 1 -1]
B=[2*R; b*sind(alpha)]
V=A \ B
r1=V(1) //mm
r2=V(2) //mm
//Calculating the intensity of pressure
C=pn*r2 //N/mm
//Calculating the axial load required
W=2*%pi*C*(r1-r2) //N
//Results:
printf("\n\n Width of the bearing surface, b = %.1f mm.\n",b)
printf(" External radius of the bearing surface, r1 = %.1f mm.\n",r1)
printf(" Internal radius of the bearing surface, r2 = %.1f mm.\n",r2)
printf(" Axial load required, W = %d N.\n\n",W)