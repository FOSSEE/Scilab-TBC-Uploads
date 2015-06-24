//To find velocity and angular velocity
clc
//Given:
NAO=120 //rpm
OA=100/1000,CE=350/1000 //m
//Solution:
//Refer Fig. 7.13
//Calculating the angular speed of the crank OA
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the velocity of A with respect to O
vAO=omegaAO*OA //m/s
vA=vAO
//By measurement from the velocity diagram, Fig. 7.14(b),
vF=0.53,od=1.08,vCE=0.44 //m/s
//Calculating the angular velocity of CE
omegaCE=vCE/CE //rad/s
//Results:
printf("\n\n The velocity of F, vF = %.2f m/s.\n",vF)
printf(" The velocity of sliding of CE in the trunnion is %.2f m/s.\n",od)
printf(" The angular velocity of CE, omegaCE = %.2f rad/s, clockwise about E.\n\n",omegaCE)