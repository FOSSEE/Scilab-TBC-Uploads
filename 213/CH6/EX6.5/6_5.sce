//To find the velocity
clc
//Given:
NO1A=400 //rpm
O1A=16/1000 //m
//Solution:
//Refer Fig. 6.21
//Calculating the angular velocity of the crank O1A
omegaO1A=2*%pi*NO1A/60 //rad/s
//Calculating the linear velocity of the crank O1A
vO1A=omegaO1A*O1A //m/s
vA=vO1A
//By measurement from the instantaneous cemtre diagram, Fig. 6.22,
I13A=41/1000,I13B=50/1000,I14B=23/1000,I14C=28/1000,I15C=65/1000,I15D=62/1000 //m
//Calculating the velocity of point B
vB=vA/I13A*I13B //m/s
//Calculating the velocity of point C
vC=vB/I14B*I14C //m/s
//Calculating the velocity of of the needle at D
vD=vC/I15C*I15D //m/s
//Results:
printf("\n\n The velocity of the needle at D, vD = %.2f m/s.\n\n",vD)