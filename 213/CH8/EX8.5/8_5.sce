//To find angular velocities and accelerations
clc
//Given:
omegaAP1=10 //rad/s
alphaAP1=30 //rad/s^2
P1A=300/1000,P2B=360/1000,AB=P2B //m
//Solution:
//Refer Fig. 8.10
//Calculating the velocity of A with respect to P1
vAP1=omegaAP1/P1A //m/s
vA=vAP1
//By measurement from the velocity diagram, Fig. 8.11(b),
vBP2=2.2,vBA=2.05 //m/s
//Calculating the angular velocity of P2B
omegaP2B=vBP2/P2B //rad/s
//Calculating the angular velocity of AB
omegaAB=vBA/AB //rad/s
//Calculating the tangential component of the acceleration of A with respect to P1
atAP1=alphaAP1*P1A //m/s^2
//Calculating the radial component of the acceleration of A with respect to P1
arAP1=vAP1^2/P1A //m/s^2
//Calculating the radial component of the acceleration of B with respect to A
arBA=vBA^2/AB //m/s^2
//Calculating the radial component of B with respect to P2
arBP2=vBP2^2/P2B //m/s^2
//By measurement from the acceleration diagram, Fig. 8.11(c),
aBP2=29.6,aB=aBP2,atBA=13.6,atBP2=26.6 //m/s^2
//Calculating the angular acceleration of P2B
alphaP2B=atBP2/P2B //rad/s^2
//Calculating the angular acceleration of AB
alphaAB=atBA/AB //rad/s^2
//Results:
printf("\n\n The velocity of P2B, vBP2 = %.1f m/s.\n",vBP2)
printf(" The angular velocity of P2B, omegaP2B = %.1f rad/s, clockwise.\n",omegaP2B)
printf(" The angular velocity of AB, omegaAB = %.1f rad/s, anticlockwise.\n",omegaAB)
printf(" The acceleration of the joint B, aB = %.1f m/s^2.\n",aB)
printf(" The angular acceleration of P2B, alphaP2B = %.1f rad/s^2, anticlockwise.\n",alphaP2B)
printf(" The angular acceleration of AB, alphaAB = %.1f rad/s^2, anticlockwise.\n\n",alphaAB)