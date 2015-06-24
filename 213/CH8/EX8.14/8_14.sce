//To find the acceleration
clc
//Given:
NBA=200 //rpm
AB=75/1000,PQ=375/1000,QR=500/1000 //m
//Solution:
//Refer Fig. 8.31
//Calculating the angular velocity of the crank AB
omegaBA=2*%pi*NBA/60 //rad/s
//Calculating the velocity of B with respect to A
vBA=omegaBA*AB //m/s
//By measurement from the velocity diagram, Fig. 8.31(b),
vR=1.6,vBdashB=1.06,vBdashP=1.13,vRQ=0.4,vQP=1.7 //m/s
PBdash=248/1000 //m
//Calculating the angular velocity of the link PQ
omegaPQ=vQP/PQ //rad/s
//Calculating the radial component of the acceleration of B with respect to A
arBA=omegaBA^2*AB //m/s^2
//Calculating the coriolis component of the acceleration of B with respect to coincident point B'
acBBdash=2*omegaPQ*vBdashB //m/s^2
//Calculating the radial component of the acceleration of R with respect to Q
arRQ=vRQ^2/QR //m/s^2
//Calculating the radial component of the acceleration of B' with respect to P
arBdashP=vBdashP^2/PBdash //m/s^2
//By measurement from the acceleration diagram, Fig. 8.31(d),
aR=22,aBBdash=18 //m/s^2
//Results:
printf("\n\n Velocity of the tool-box R, vR = %.1f m/s.\n",vR)
printf(" Acceleration of the tool-box R, aR = %d m/s^2.\n",aR)
printf(" The acceleration of sliding of the block B along the slotted lever PQ, aBBdash = %d m/s^2.\n\n",aBBdash)