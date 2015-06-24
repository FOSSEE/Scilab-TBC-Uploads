//To find dimensions of clutch plate
clc
//Given:
P=7.5*1000 //W
N=900 //rpm
p=0.07 //N/mm^2
mu=0.25
n=2
//Solution:
//Calculating the angular speed of the clutch
omega=2*%pi*N/60 //rad/s
//Calculating the torque transmitted
T=P/omega*1000 //N-mm
//Calculating the mean radius of the friction lining
R=(T/(%pi/2*n*mu*p))^(1/3) //mm
//Calculating the face width of the friction lining
w=R/4 //mm
//Calculating the outer and inner radii of the clutch plate
//We have, w = r1-r2, or r1-r2 = w                            .....(i)
//Also, R = (r1+r2)/2, or r1+r2 = 2*R                         .....(ii)
A=[1 -1; 1 1]
B=[w; 2*R]
V=A \ B
r1=V(1)
r2=V(2)
//Results:
printf("\n\n Mean radius of the friction lining, R = %d mm.\n",R)
printf(" Face width of the friction lining, w = %.2f mm.\n",w)
printf(" Outer radius of the clutch plate, r1 = %.3f mm.\n",r1)
printf(" Inner radius of the clutch plate, r2 = %.3f mm.\n\n",r2)