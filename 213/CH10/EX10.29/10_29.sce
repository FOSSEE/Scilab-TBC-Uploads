//To find maximum intensity of pressure
clc
//Given:
n1=3, n2=2, mu=0.3
d1=240, r1=d1/2, d2=120, r2=d2/2 //mm
P=25*1000 //W
N=1575 //rpm
//Solution:
//Calculating the angular speed of the shaft
omega=2*%pi*N/60 //rad/s
//Calculating the torque transmitted
T=P/omega //N-m
//Calculating the number of pairs of friction surfaces
n=n1+n2-1
//Calculating the mean radius of friction surfaces for uniform wear
R=(r1+r2)/(2*1000) //m
//Calculating the axial force on each friction surface
W=T/(n*mu*R) //N
//Calculating the maximum axial intensity of pressure
p=W/(2*%pi*r2*(r1-r2)) //N/mm^2
//Results:
printf("\n\n Maximum axial intensity of pressure, p = %.3f N/mm^2.\n\n",p)