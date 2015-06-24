//To find the angular velocity
clc
//Given:
NBA=120 //rpm
AB=40/1000,CD=80/1000 //m
//Solution:
//Refer Fig. 7.7
//Calculating the angular velocity of the crank AB
omegaBA=2*%pi*NBA/60 //rad/s
//Calculating the velocity of B with respect to A
vBA=omegaBA*AB //m/s
vB=vBA
//By measurement from the velocity diagram, Fig. 7.7(b),
vCD=0.385 //m/s
vC=vCD
//Calculating the angular velocity of link CD
omegaCD=vCD/CD //rad/s
//Results:
printf("\n\n The angular velocity of link CD, omegaCD = %.1f rad/s, clockwise about D.\n\n",omegaCD)