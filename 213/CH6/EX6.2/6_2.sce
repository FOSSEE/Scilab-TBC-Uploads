//To find velocity and angular velocity
clc
//Given:
omegaOB=10 //rad/s
OB=100/1000 //m
//Solution:
//Refer Fig. 6.12
//Calculating the velocity of the crank OB
vOB=omegaOB*OB //m/s
vB=vOB
//By measurement from the instantaneous cemtre diagram, Fig. 6.13,
I13A=460/1000,I13B=560/1000 //m
//Calculating the velocity of slider A
vA=vB/I13B*I13A
//Calculating the angular velocity of the connecting rod AB
omegaAB=vB/I13B //rad/s
//Results:
printf("\n\n The velocity of slider A, vA = %.2f m/s.\n",vA)
printf(" The angular velocity of connecting rod AB, omegaAB = %.2f rad/s.\n\n",omegaAB)