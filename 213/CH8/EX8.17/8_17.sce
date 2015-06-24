//To find velocities and acceleration
clc
//Given:
NAO=100 //rpm
OA=50/1000,AB=350/1000,DE=250/1000,EF=DE,CB=125/1000 //m
//Solution:
//Refer Fig. 8.37
//Calculating the angular velocity of the crank AO
omegaAO=2*%pi*NAO/60 //rad/s
//Calculating the velocity of A with respect to O
vAO=omegaAO*OA //m/s
vA=vAO
//By measurement from the velocity diagram, Fig. 8.37(b),
vBA=0.4,vBC=0.485,vB=vBC,vSD=0.265,vQS=0.4,vED=0.73,vFE=0.6,vF=0.27 //m/s
DS=85/1000 //m
//Calculating the angular velocity of the link DE
omegaDE=vED/DE //rad/s
//Calculating the velocity of sliding of the link DE in the swivel block
vS=vQS //m/s
//Calculating the radial component of the acceleration of A with respect to O
arAO=vAO^2/OA //m/s^2
//Calculating the radial component of the acceleration of B with respect to A
arBA=vBA^2/AB //m/s^2
//Calculating the radial component of the acceleration of B with respect to C
arBC=vBC^2/CB //m/s^2
//Calculating the radial component of the acceleration of S with respect to D
arSD=vSD^2/DS //m/s^2
//Calculating the coriolis component of the acceleration of Q with respect to S
acQS=2*omegaDE*vQS //m/s^2
//Calculating the radial component of the acceleration of F with respect to E
arFE=vFE^2/EF //m/s^2
//By measurement from the acceleration diagram, Fig. 8.37(d),
arQS=1.55 //m/s^2
//Results:
printf("\n\n Velocity of the slider block F, vF = %.2f m/s.\n",vF)
printf(" Angular velocity of the link DE, omegaDE = %.2f rad/s, anticlockwise.\n",omegaDE)
printf(" Velocity of sliding of the link DE in the swivel block, vS = %.1f m/s.\n",vS)
printf(" Acceleration of sliding of the link DE in the trunnion, arQS = %.2f m/s^2.\n\n",arQS)