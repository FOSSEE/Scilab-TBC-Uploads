//To find power transmitted
clc
//Given:
d1=300, r1=d1/2, d2=200, r2=d2/2 //mm
p=0.1 //N/mm^2
mu=0.3
N=2500 //rpm
n=2
//Solution:
//Calculating the radial speed of the clutch
omega=2*%pi*N/60 //rad/s
//Calculating the intensity of pressure
C=p*r2 //N/mm
//Calculating the axial thrust
W=2*%pi*C*(r1-r2) //N
//Calculating the mean radius of the friction surfaces for uniform wear
R=(r1+r2)/(2*1000) //m
//Calculating the torque transmitted
T=n*mu*W*R //N-m
//Calculating the power transmitted by a clutch
P=T*omega/1000 //kW
//Results:
printf("\n\n Power transmitted by a clutch, P = %.3f kW.\n\n",P)