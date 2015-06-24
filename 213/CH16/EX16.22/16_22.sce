//To find mass of the flywheel
clc
//Given:
d=40, t=15 //mm
NoofHoles=30 //per minute
EnergyRequired=6 //N-m/mm^2
Time=1/10 //seconds
N1=160, N2=140 //rpm
k=1 //m
//Solution:
//Calculating the sheared area per hole
A=round(%pi*d*t) //Sheared area per hole, mm^2
//Calculating the energy required to punch a hole
E1=EnergyRequired*A //N-m
//Calculating the energy required for punching work per second
E=E1*NoofHoles/60 //Energy required for punching work per second, N-m/s
//Calculating the energy supplied by the motor during the time of punching
E2=E*Time //N-m
//Calculating the energy to be supplied by the flywheel during punching a hole
deltaE=E1-E2 //N-m
//Calculating the mean speed of the flywheel
N=(N1+N2)/2 //rpm
//Calculating the mass of the flywheel required
m=round(deltaE*900/(%pi^2*k^2*N*(N1-N2))) //kg
//Results:
printf("\n\n Mass of the flywheel required, m = %d kg.\n\n",m)