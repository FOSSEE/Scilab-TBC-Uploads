//To find linear and angular velocities and accelerations
clc
//Given:
NAO=180 //rpm
OA=180/1000,CB=240/1000,AB=360/1000,BD=540/1000 //m
alphaAO=50 //rad/s^2
//Solution:
//Refer Fig. 8.17
//Calculating the angular speed of crank AO
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the velcoity of A with respect to O
vAO=omegaAO*OA //m/s
vA=vAO
//By measurement from the velocity diagram, Fig. 8.17(b),
vBA=0.9,vBC=2.4,vDB=2.4,vD=2.05 //m/s
//Calculating the angular velocity of BD
omegaBD=vDB/BD //rad/s
//Calculating the tangential component of the acceleration of A with respect to O
atAO=alphaAO*OA //m/s^2
//Calculating the radial component of the acceleration of A with respect to O
arAO=vAO^2/OA //m/s^2
//Calculating the radial component of the acceleration of B with respect to A
arBA=vBA^2/AB //m/s^2
//Calculating the radial component of the acceleration of B with respect to C
arBC=vBC^2/AB //m/s^2
//Calculating the radial component of the acceleration of D with respect to B
arDB=vDB^2/BD //m/s^2
//By measurement from the acceleration diagram, Fig. 8.17(c),
aD=13.3,atDB=38.5 //m/s^2
//Calculating the angular acceleration of BD
alphaBD=atDB/BD //rad/s^2
//Results:
printf("\n\n Velocity of slider D, vD = %.2f m/s.\n",vD)
printf(" Angular velocity of BD, omegaBD = %.1f rad/s.\n",omegaBD)
printf(" Acceleration of slider D, aD = %.1f m/s^2.\n",aD)
printf(" Angular acceleration of BD, alphaBD = %.1f rad/s^2, clockwise.\n\n",alphaBD)