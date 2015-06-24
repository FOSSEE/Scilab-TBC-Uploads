//To find the velocity
clc
//Given:
omegaO1A=100 //rad/s
O1A=100/1000 //m
//Solution:
//Refer Fig. 6.18
//Calculating the linear velocity of crank O1A
vO1A=omegaO1A*O1A //m/s
vA=vO1A
//By measurement from the instantaneous cemtre diagram, Fig. 6.19,
I13A=910/1000,I13B=820/1000,I15B=130/1000,I15D=50/1000,I16D=200/1000,I16E=400/1000 //m
//Calculating the velocity of point B
vB=vA/I13A*I13B //m/s
//Calculating the velocity of point D
vD=vB/I15B*I15D //m/s
//Calculating the velocity of point E
vE=vD/I16D*I16E //m/s
//Results:
printf("\n\n The velocity of point B, vB = %.2f m/s.\n",vB)
printf(" The velocity of point D, vD = %.2f m/s.\n",vD)
printf(" The velocity of point E, vE = %.2f m/s.\n",vE)