//To find linear and agular velocity and acceleration
clc
//Given:
NBO=300 //rpm
OB=150/1000,BA=600/1000 //m
//Solution:
//Refer Fig. 8.4
//Calculating the angular velocity of BO
omegaBO=2*%pi*NBO/60 //rad/s
//Calculating the linear velocity of B with respect to O
vBO=omegaBO*OB //m/s
vB=vBO
//By measurement from the velocity diagram, Fig. 8.4(b),
vAB=3.4,vD=4.1 //m/s
//Calculating the radial component of the acceleration of B with respect of O
arBO=vBO^2/OB //m/s^2
aB=arBO
//Calculating the radisla component of the accaleration of A with respect to B
arAB=vAB^2/BA //m/s^2
//By measurement from the acceleration diagram, Fig. 8.4(c),
aD=117,adashAB=103 //m/s^2
//Calculating the angular velocity of the connecting rod
omegaAB=vAB/BA //rad/s^2
//Calculating the angular acceleration of the connecting rod
alphaAB=adashAB/BA //rad/s^2
//Results:
printf("\n\n The linear velocity of the midpoint of the connecting rod, vD = %.1f m/s.\n",vD)
printf(" The linear acceleration of the midpoint of the connecting rod, aD = %d m/s^2.\n",aD)
printf(" The angular velocity of the connecting rod, omegaAB = %.2f rad/s, anticlockwise about B.\n",omegaAB)
printf(" The angular acceleration of the connecting rod, alphaAB = %.2f rad/s^2, clockwise about B.\n\n",alphaAB)