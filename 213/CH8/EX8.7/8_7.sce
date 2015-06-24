//To find linear and angular acceleration
clc
//Given:
NAO=180 //rpm
OA=150/1000,AB=450/1000,PB=240/1000,CD=660/1000 //m
//solution:
//Refer Fig. 8.15
//Calculating the angular speed of crank AO
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the velocity of A with respect to O
vAO=omegaAO*OA //m/s
vA=vAO
//By measurement from the velocity diagram, Fig. 8.15(b),
vD=2.36,vDC=1.2,vBA=1.8,vBP=1.5 //m/s
//Calculating the radial component of the acceleration of B with respect to A
arAO=vBA^2/AB //m/s^2
//Calculating the radial component of the acceleration of B with respect to A
arBA=vBA^2/AB //m/s^2
//Calculating the radial component of the acceleration of B with respect to P
arBP=vBP^2/PB //m/s^2
//Calculating the radial component of D with respect to C
arDC=vDC^2/CD //m/s^2
//By measurement from the acceleration diagram, Fig. 8.15(c),
aD=69.6,atDC=17.4 //m/s^2
//Calculating the angular acceleration of CD
alphaCD=atDC/CD //rad/s^2
//Results:
printf("\n\n Acceleration of slider D, aD = %.1f m/s^2.\n",aD)
printf(" Angular acceleration of link CD, alphaCD = %.1f rad/s^2.\n\n",alphaCD)