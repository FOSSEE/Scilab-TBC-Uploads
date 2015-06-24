//To find velocity and acceleration
clc
//Given:
NBA=120 //rpm
AB=150/1000,OC=700/1000,CD=200/1000 //m
//Solution:
//Refer Fig. 8.29
//Calculating the angular speed of the crank AB
omegaAB=2*%pi*NBA/AB //rad/s
//Calculating the velocity of B with respect to A
vBA=omegaBA*AB //m/s
//By measurement from the velocity diagram, Fig. 8.29(b),
vD=2.15,vBBdash=1.05,vDC=0.45,vBdashO=1.55,vCO=2.15 //m/s
BdashO=0.52 //m
//Calculating the angular velocity of the link OC or OB'
omegaCO=vCO/OC //rad/s
omegaBdashO=omegaCO //rad/s
//Calculating the radial component of the acceleration of B with respect to A
arBA=omegaAB^2/AB //m/s^2
//Calculating the coriolis component of the acceleration of slider B with respect to the coincident point B'
acBBdash=2*omegaCO*vBBdash //m/s^2
//Calculating the radial component of the acceleration of D with respect to C
arDC=vDC^2/CD //m/s^2
//Calculating the radial component of the acceleration of B' with respect to O
arBdashO=vBdashO^2/BdashO //m/s^2
//By measurement fro the acceleration diagram, Fig. 8.29(c),
aD=8.4,atBdashO=6.4 //m/s^2
//Calculating the angular acceleration of the slotted lever
alpha=atBdashO/BdashO //The angular acceleration of the slotted lever, rad/s^2
//Results:
printf("\n\n Velocity of the ram D, vD = %.2f m/s.\n",vD)
printf(" Acceleration of the ram D, aD = %.1f m/s^2.\n",aD)
printf(" Angular acceleration of the slotted lever = %.1f rad/s^2, anticlockwise.\n\n",alpha)