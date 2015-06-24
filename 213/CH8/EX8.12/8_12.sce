//To find the velocity and acceleration
clc
//Given:
NDC=1140 //rpm
AB=80/1000,CD=40/1000,BE=150/1000,DE=BE,EP=200/1000 //m
//Solution:
//Refer Fig. 8.25
//Calculating the angular speed of the link CD
omegaDC=2*%pi*NDC/60 //rad/s
//Calculating the velocity of D with respect to C
vDC=omegaDC*CD //m/s
vD=vDC
//Calculating the angular speed of the larger wheel
omegaBA=omegaDC*CD/AB //rad/s
//Calculating the velocity of B with respect to A
vBA=omegaBA*AB //m/s
vB=vBA
//By measurement from the velocity diagram, Fig. 8.25(b),
vEB=8.1,vED=0.15,vPE=4.7,vP=0.35 //m/s
//Calculating the radial component of the acceleration of B with respect to A
arBA=vBA^2/AB //m/s^2
//Calculating the radial component of the acceleration of D with respect to C
arDC=vDC^2/CD //m/s^2
//Calculating the radial component of the acceleration of E with respect to B
arEB=vEB^2/BE //m/s^2
//Calculating the radial component of the acceleration of E with respect to D
arED=vED^2/DE //m/s^2
//Calculating the radial component of the acceleration of P with respect to E
arPE=vPE^2/EP //m/s^2
//By measurement from the acceleration diagram, Fig. 8.25(c),
aP=655 //m/s^2
//Results:
printf("\n\n Velocity of P, vP = %.2f m/s.\n",vP)
printf(" Acceleration of the piston P, aP = %d m/s^2.\n\n",aP)