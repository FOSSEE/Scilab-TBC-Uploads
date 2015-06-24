//To find velocity and angular velocity
clc
//Given:
NOA=120 //rpm
OA=200/1000 //m/s
//Results:
//Refer Fig. 6.15
//Calculating the angular velocity of the crank OA
omegaOA=2*%pi*NOA/60 //rad/s
//Calculating the velocity of crank OA
vOA=omegaOA*OA //m/s
vA=vOA
//By measurement from the instantaneous cemtre diagram, Fig. 6.16,
I13A=840/1000,I13B=1070/1000,I14B=400/1000,I14C=200/1000,I15C=740/1000,I15D=500/1000 //m
//Calculating the velocity of point B
vB=vA/I13A*I13B //m/s
//Calculating the velocity of point C
vC=vB/I14B*I14C //m/s
//Calculating the velocity of point B
vD=vC/I15C*I15D //m/s
//Calculating the angular velocity of the link AB
omegaAB=vA/I13A //rad/s
//Calculating the angular velocity of the link BC
omegaBC=vB/I14B //rad/s
//Calculating the angular velocity of the link CD
omegaCD=vC/I15C //rad/s
//Results:
printf("\n\n The velocity of point B, vB = %.1f m/s.\n",vB)
printf(" The velocity of point C, vC = %.1f m/s.\n",vC)
printf(" The velocity of point D, vD = %.2f m/s.\n",vD)
printf(" The angular velocity of the link AB, omegaAB = %.2f rad/s.\n",omegaAB)
printf(" The angular velocity of the link BC, omegaBC = %d rad/s.\n",omegaBC)
printf(" The angular velocity of the link CD, omegaCD = %.2f rad/s.\n\n",omegaCD)