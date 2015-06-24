//To find velocities, angular velocities and position
clc
//Given:
NBO=180 //rpm
OB=0.5,PB=2,dO=50/1000,dB=60/1000,dC=30/1000 //m
//Solution:
//Refer Fig. 7.8
//Calculating the angular velocity of the crank BO
omegaBO=2*%pi*NBO/60 //rad/s
//Calculating the linear velocity of B with respect to O
vBO=omegaBO*OB //m/s
vB=vBO
//By measurement from the velocity diagram, Fig. 7.8(b),
vP=8.15,vPB=6.8,vE=8.5,bg=5,bp=vPB,vG=8 //m/s
//Calculating the angular velocity of the connecting rod PB
omegaPB=vPB/PB //rad/s
//Calculating the velocity of rubbing at the pin of crank-shaft
vCS=dO/2*omegaBO //Velocity of rubbing at the pin of crank-shaft, m/s
//Calculating the velocity of rubbing at the pin of crank
vC=dB/2*(omegaBO+omegaPB) //Velocity of rubbing at the pin of crank, m/s
//Calculating the velocity of rubbing at the pin of cross-head
vPCH=dC/2*omegaPB //Velocity of rubbing at the pin of cross-head, m/s
//Calculating the position of point G on the connecting rod
BG=bg/bp*PB //m
//Results:
printf("\n\n The velocity of piston P, vP = %.2f m/s.\n",vP)
printf(" The angular velocity of connecting rod, omegaPB = %.1f rad/s, anticlockwise.\n",omegaPB)
printf(" The velocity of point E on the connecting rod, vE = %.1f m/s.\n",vE)
printf(" The velocity of rubbing at the pin of crank-shaft is %.2f m/s.\n",vCS)
printf(" The velocity of rubbing at the pin of crank is %.4f m/s.\n",vC)
printf(" The velocity of rubbing at the pin of cross-head is %.3f m/s.\n",vPCH)
printf(" The position of point G on the connecting rod, BG = %.2f m.\n",BG)
printf(" The linear velocity of point G, vG = %d m/s.\n\n",vG)