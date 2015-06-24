//To find velocity and angular velocity
clc
//Given:
NPO=120 //rpm
OQ=100/1000,OP=200/1000,RQ=150/1000,RS=500/1000 //m
//Solution:
//Refer Fig. 7.22
//Calculating the angular speed of the crank PO
omegaPO=2*%pi*NPO/60 //rad/s
//Calculating the velocity of P with respect to O
vPO=omegaPO*OP //m/s
vP=vPO
//By measurement from the velocity diagram, Fig. 7.23(b),
vS=0.8,vSR=0.96,vTP=0.85 //m/s
//Calculating the angular velocity of link RS
omegaRS=vSR/RS //rad/s
//Results:
printf("\n\n The velocity of the slider S (cutting tool), vS = %.1f m/s.\n",vS)
printf(" The angular velocity of the link RS, omegaRS = %.2f rad/s, clockwise about R.\n",omegaRS)
printf(" The velocity of the sliding block T on the slotted lever QT, vTP = %.2f m/s.\n\n",vTP)