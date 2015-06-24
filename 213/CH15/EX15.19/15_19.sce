//To find acceleration and inertia force
clc
//Given:
r=125, OC=r, l=500, PC=l, PG=275, kG=150 //mm
mC=60 //kg
N=600 //rpm
theta=45 //degrees
//Solution:
//Refer Fig. 15.24
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Acceleration of the piston:
//By measurement,
NO=90/1000 //m
//Calculating the acceleration of the piston
aP=omega^2*NO //m/s^2
//The magnitude, position and direction of inertia force due to the mass of the connecting rod:
//By measurement,
gO=103/1000 //m
//Calculating the magnitude of the inertia force of the connecting rod
FC=mC*omega^2*gO/1000 //kN
//Results:
printf("\n\n Acceleration of the piston, aP = %.1f m/s^2.\n\n",aP)
printf(" The magnitude of inertia force due to the mass of the connecting rod, FC = %.1f kN.\n\n",FC)