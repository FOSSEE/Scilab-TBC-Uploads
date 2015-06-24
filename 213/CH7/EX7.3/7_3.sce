//To find the velocity
clc
//Given:
NAO=600 //rpm
OA=28/1000,BD=46/1000 //m
//Solution:
//Refer Fig. 7.10
//Calculating the angular velocity of crank AO
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the velocity of A with respect to O
vAO=omegaAO*OA //m/s
vA=vAO
//By measurement from the velocity diagram, Fig. 7.10(b),
vD=1.6,vDB=1.7 //m/s
//Calculating the angular velocity of D with respect to B
omegaBD=vDB/BD //rad/s
//Results:
printf("\n\n The velocity of the slider D, vD = %.1f m/s.\n",vD)
printf(" The angular velocity of the link BD, omegaBD = %.2f rad/s, clockwise sbout B.\n\n",omegaBD)