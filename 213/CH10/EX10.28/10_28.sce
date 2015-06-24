//To find the power transmitted
clc
//Given:
n=4, mu=0.3
p=0.127 //N/mm^2
N=500 //rpm
r1=125, r2=75 //mm
//Solution:
//Calculating the angular speed of the clutch
omega=2*%pi*N/60 //rad/s
//Calculating the maximum intensity of pressure
C=p*r2 //N/mm
//Calculating the axial force required to engage the clutch
W=2*%pi*C*(r1-r2) //N
//Calculating the mean radius of the friction surfaces
R=(r1+r2)/(2*1000) //m
//Calculating the torque transmitted
T=n*mu*W*R //N-m
//Calculating the power transmitted
P=T*omega/1000 //kW
//Results:
printf("\n\n Power transmitted, P = %.1f kW.\n\n",P)