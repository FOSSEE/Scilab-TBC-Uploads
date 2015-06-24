//To find the angular velocity and acceleration
clc
//Given:
omegaQP=10 //rad/s
PQ=62.5/1000,QR=175/1000,RS=112.5/1000,PS=200/1000 //m
//Solution:
//Refer Fig. 8.9
//Calculating the velocity of Q with respect to P
vQP=omegaQP*PQ //m/s
vQ=vQP
//By measurement from the velocity diagram, Fig. 8.9(b),
vRQ=0.333,vRS=0.426,vR=vRS //m/s
//Calculating the angular velocity of link QR
omegaQR=vRQ/QR //rad/s
//Calculating the angular velocity of link RS
omegaRS=vRS/RS //rad/s
//Calculating the radial component of the acceleration of Q with respect to P
arQP=vQP^2/PQ //m/s^2
aQP=arQP,aQ=aQP
//Calculating the radial component of the acceleration of R with respect to Q
arRQ=vRQ^2/QR //m/s^2
//Calculating the radial component of the acceleration of R with respect to S
arRS=vRS^2/RS //m/s^2
aRS=arRS,aR=aRS
//By measurement from the acceleration diagram, Fig. 8.9(c),
atRQ=4.1,atRS=5.3 //m/s^2
//Calculating the angular acceleration of link QR
alphaQR=atRQ/QR //rad/s^2
//Calculating the angular acceleration of link RS
alphaRS=atRS/RS //rad/s^2
//Results:
printf("\n\n The angular velocity of link QR, omegaQR = %.1f rad/s, anticlockwise.\n",omegaQR)
printf(" The angular velocity of link RS, omegaRS = %.2f rad/s, clockwise.\n",omegaRS)
printf(" The angular acceleration of link QR, alphaQR = %.2f rad/s^2, anticlockwise.\n",alphaQR)
printf(" The angular acceleration of link RS, alphaRS = %.1f rad/s^2, anticlockwise.\n\n",alphaRS)