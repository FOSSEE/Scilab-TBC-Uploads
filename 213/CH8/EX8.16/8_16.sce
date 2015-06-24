//To find linear and angular acceleration
clc
//Given:
AB=125/1000 //m
NCO=300 //rpm
//Solution:
//Refer Fig. 8.35
//By measurement from the space diagram, Fig. 8.35(a),
OC=85/1000 //m
//Calculating the angular velocity of the link CO
omegaCO=2*%pi*NCO/60 //rad/s
//Calculating the velocity of C with respect to O
vCO=omegaCO*OC //m/s
vC=vCO
//By measurement from the velocity diagram, Fig. 8.35(b),
vBC=0.85,vBA=2.85,vB=vBA //m/s
//Calculating the radial component of of the acceleration of C with respect to O
arCO=vCO^2/OC //m/s^2
//Calculating the coriolis component of of acceleration of the piston B with respect to the cylinder or the coincident point C
acBC=2*omegaCO*vBC //m/s^2
//Calculating the radial component of of the acceleration of B with respect to A
arBA=vBA^2/AB //m/s^2
//By measurement from the acceleration diagram, Fig. 8.35(d),
aBC=73.2,atBA=37.6 //m/s^2
//Calculating the angular acceleration of the connecting rod AB
alphaAB=atBA/AB //rad/s^2
//Results:
printf("\n\n Acceleration of the piston inside the cylinder, aBC = %.1f m/s^2.\n",aBC)
printf(" Angular acceleration of the connecting rod AB, alphaAB = %d rad/s^2, clockwise.\n\n",alphaAB)