//To find linear and angular velocity
clc
//Given:
NBO1=40 //rpm
O1O2=800/1000,O1B=300/1000,O2D=1300/1000,DR=400/1000 //m
//Solution:
//Refer Fig. 7.18
//Calculating the angular speed of the crank BO
omegaBO1=2*%pi*NBO1/60 //rad/s
//Calculating the velocity of B with respect to O1
vBO1=omegaBO1*O1B //m/s
vB=vBO1
//By measurement from the velocity diagram, Fig. 7.18(b),
vR=1.44, vDO2=1.32 //m/s
vD=vDO2
//Calculating the angular velocity of the link O2D
omegaDO2=vDO2/O2D //rad/s
//Results:
printf("\n\n The velocity of the ram R, vR = %.2f m/s.\n",vR)
printf(" The angular velocity of the link O2D, omegaDO2 = %.3f rad/s, anticlockwise about O2.\n\n",omegaDO2)