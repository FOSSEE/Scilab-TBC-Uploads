//To find the absolute velocity
clc
//Given:
NCO=120 //rpm
OC=125/1000 //m
//Solution:
//Refer Fig. 7.15
//Calculating the angular velocity of the crank CO
omegaCO=2*%pi*NCO/60 //rad/s
//Calculating the linear velocity of C with respect to O
vCO=omegaCO*OC //m/s
vC=vCO
//By measurement from the velocity diagram, Fig. 7.16(b),
vCO=1.57,vE=0.7 //m/s
//Results:
printf("\n\n The absolute velocity of point E of the lever, vE = %.1f m/s.\n\n",vE)