//To find velocity of ram
clc
//Given:
NOA=120 //rpm
//Solution:
//Refer Fig. 6.24
//Calculating the angular speed of crank OA
omegaOA=2*%pi*NOA/60 //rad/s
//By measurement from the instantaneous cemtre diagram, Fig. 6.25,
I12I26=65/1000 //m
//Calculating the velocity of the ram
vD=omegaOA*I12I26 //m/s
//Results:
printf("\n\n The velocity of ram D, vD = %.3f m/s.\n\n",vD)