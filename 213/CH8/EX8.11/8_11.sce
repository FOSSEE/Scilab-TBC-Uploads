//To find velocity and acceleration
clc
//Given:
NAO=150 //rpm
OA=150/1000,AB=550/1000,AC=450/1000,DC=500/1000,BE=350/1000 //m
//Solution:
//Refer Fig. 8.23
//Calculating the angular speed of the crank AO
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the linear velocity of A with respect to O
vAO=omegaAO*OA //m/s
vA=vAO
//By measurement from the velocity diagram, Fig. 8.23(b),
vCA=0.53,vCD=1.7,vC=vCD,vEB=1.93,vE=1.05 //m/s
//Calculating the radial component of the acceleration of A with respect to O
arAO=vAO^2/OA //m/s^2
aA=arAO
//Calculating the radial component of the acceleration of C with respect to A
arCA=vCA^2/AC //m/s^2
//Calculating the radial component of the acceleration of C with respect to D
arCD=vCD^2/DC //m/s^2
//Calculating the radial component of the acceleration of E with respect to B
arEB=vEB^2/BE //m/s^2
//By measurement from the acceleration diagram, Fig. 8.23(c),
aE=3.1 //m/s^2
//Results:
printf("\n\n Velocity of the ram E, vE = %.2f m/s.\n",vE)
printf(" Acceleration of the ram E, aE = %.1f m/s^2.\n\n",aE)