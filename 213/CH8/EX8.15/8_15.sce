//To find linear and angular acceleration
clc
//Given:
NAO=30 //rpm
OA=150/1000,OC=100/1000,CD=125/1000,DR=500/1000 //m
//Solution:
//Refer Fig. 8.33
//Calculating the angular speed of the crank OA
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the velocity of A with respect to O
vAO=omegaAO*OA //m/s
vA=vAO
//By measurement from the velocity diagram, Fig. 8.33(b),
vBC=0.46,vAB=0.15,vRD=0.12 //m/s
CB=240/1000 //m
//Calculating the angular velocity of the link BC
omegaBC=vBC/CB //rad/s
//Calculating the radial component of the acceleration of A with respect to O
arAO=vAO^2/OA //m/s^2
//Calculating the coriolis component of the acceleration of A with respect to coincident point B
acAB=2*omegaBC*vAB //m/s^2
//Calculating the radial component of the acceleration of B with respect to C
arBC=vBC^2/CB //m/s^2
//Calculating the radial component of the acceleration of R with respect to D
arRD=vRD^2/DR //m/s^2
//By measurement from the acceleration diagram, Fig. 8.33(c),
aR=0.18,atBC=0.14 //m/s^2
//Calculating the angular acceleration of the slotted lever CA
alphaCA=atBC/CB //rad/s^2
alphaBC=alphaCA
//Results:
printf("\n\n Acceleration of the sliding block R, aR = %.2f m/s^2.\n",aR)
printf(" Angular acceleration of the slotted lever CA, alphaCA = %.3f rad/s^2, anticlockwise.\n\n",alphaCA)