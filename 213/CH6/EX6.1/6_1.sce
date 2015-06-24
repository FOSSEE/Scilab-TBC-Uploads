//To find the angular velocity
clc
//Given:
NAB=100 //rpm
AB=300/1000,BC=360/1000,CD=BC //m
//Solution:
//Refer Fig. 6.9
//Calculating the angular speed of link AB
omegaAB=2*%pi*NAB/60 //rad/s
//Calculating the velocity of point B on link AB
vB=omegaAB*AB //m/s
//Calculating the angular velocity of link BC
//By measurement from instantaneous centre diagram, Fig. 6.10,
I13B=500/1000 //m
omegaBC=vB/I13B //rad/s
//Results:
printf("\n\n The angular velocity of the link BC, omegaBC = %.3f rad/s.\n\n",omegaBC)