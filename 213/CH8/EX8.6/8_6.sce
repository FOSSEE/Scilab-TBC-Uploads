//To find velocities and accelerations
clc
//Given:
NAO=20 //rpm
OA=300/1000,AB=1200/1000,BC=450/1000,CD=BC //m
//Solution:
//Refer Fig. 8.13
//Calculating the angular velocity of crank AO
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the linear velocity of A with respect to O
vAO=omegaAO*OA //m/s
vA=vAO
//By measurement from the velocity diagram, Fig. 8.13(b),
vB=0.4,vD=0.24,vDC=0.37,vBA=0.54 //m/s
//Calculating the angular velocity of CD
omegaCD=vDC/CD //rad/s
//Calculating the radial component of the acceleration of A with respect to O
arAO=vAO^2/OA //m/s^2
//Calculating the radial component of the acceleration of B with respect to A
arBA=vBA^2/AB //m/s^2
//Calculating the radial component of the acceleration of D with respect to C
arDC=vDC^2/CD //m/s^2
//By measurement from the acceleration diagram, Fig. 8.13(c),
aD=0.16,atDC=1.28 //m/s^2
//Calculating the angular acceleration of CD
alphaCD=atDC/CD //rad/s^2
//Results:
printf("\n\n Velocity of sliding at B, vB = %.1f m/s.\n",vB)
printf(" Velocity of sliding at D, vD = %.2f m/s.\n",vD)
printf(" Angular velocity of CD, omegaCD = %.2f rad/s.\n",omegaCD)
printf(" Linear acceleration of D, aD = %.2f m/s^2.\n",aD)
printf(" Angular acceleration of CD, alphaCD = %.2f rad/s^2, clockwise.\n\n",alphaCD)