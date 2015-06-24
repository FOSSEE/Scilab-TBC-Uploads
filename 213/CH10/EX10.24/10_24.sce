//To find radii and axial thrust
clc
//Given:
n=2, mu=0.255
P=25*1000 //W
N=3000 //rpm
r=1.25 //Ratio of radii, r1/r2
p=0.1 //N/mm^2
//Solution:
//Calculating the angular speed of the clutch
omega = 2*%pi*N/60 //rad/s
//Calculating the torque transmitted
T=P/omega*1000 //N-mm
//Calculating the inner radius
r2=(T/(n*mu*2*%pi*0.1*(1.25-1)*(1.25+1)/2))^(1/3) //mm
//Calculating the outer radius
r1=r*r2 //mm
//Calculating the axial thrust to be provided by springs
C=0.1*r2 //Intensity of pressure, N/mm
W=2*%pi*C*(r1-r2) //N
//Results:
printf("\n\n Outer radius of the frictional surface, r1 = %d mm.\n",r1)
printf(" Inner radius of the frictional surface, r2 = %d mm.\n",r2)
printf(" Axial thrust to be provided by springs, W = %d N.\n\n",W)