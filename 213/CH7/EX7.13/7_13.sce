//To find the velocities
clc
//Given:
NBA=180 //rpm
AB=0.45,BD=1.5,BC=0.9,CE=BC //m
FD=500,FE=750 //N
//Solution:
//Refer Fig. 7.31
//Calculating the angular velocity of the crank AB
omegaBA=2*%pi*NBA/60 //rad/s
//Calculating the velocity of B with respect to A
vBA=omegaBA*AB //m/s
vB=vBA
//By measurement from the velocity diagram, Fig. 7.31(b),
vD=9.5,vE=1.7 //m/s
//Calculating the power input
Pi=FD*vD-FE*vE //N-m/s
//Calculating the turning moment at A
TA=Pi/omegaBA //N-m
//Results:
printf("\n\n The velocity of slider D, vD = %.1f m/s.\n",vD)
printf(" The velocity of slider E, vE = %.1f m/s.\n",vE)
printf(" The turning moment at A, TA = %.1f N-m.\n\n",TA)