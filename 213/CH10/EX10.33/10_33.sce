//To find dimensions of contact surfaces
clc
//Given:
alpha=30/2 //degrees
pn=0.35 //N/mm^2
P=22.5*1000 //W
N=2000 //rpm
mu=0.15
//Solution:
//Calculating the angular speed of the clutch
omega=2*%pi*N/60 //rad/s
//Calculating the torque transmitted by the clutch
T=P/omega*1000 //N-mm
//Calculating the mean radius of the contact surface
R=(T/(2*%pi*mu*pn/3))^(1/3) //mm
//Calculating the face width of the contact surface
b=R/3
//Calculating the outer and inner radii of the contact surface
//Refer Fig. 10.27
//We have, r1-r2 = b*sind(alpha), and r1+r2 = 2*R
A=[1 -1; 1 1]
B=[b*sind(alpha); 2*R]
V=A \ B
r1=V(1) //mm
r2=V(2) //mm
//Results:
printf("\n\n Mean radius of the contact surface, R = %d mm.\n",R)
printf(" Outer radius of the contact surface, r1 = %.2f mm.\n",r1)
printf(" Inner radius of the contact surface, r2 = %.2f mm.\n\n",r2)