//To find power and mass
clc
//Given:
d=38, t=32, s=100 //mm
E1=7 //N-m/mm^2 of sheared area
v=25 //m/s
//Solution:
//Power of the motor required:
//Calculating the sheared area
A=round(%pi*d*t) //mm^2
//Calculating the total energy required per hole
E1=E1*A //N-m
//Calculating the energy required for punching work per second
E=E1/10 //Energy required for punching work per second, N-m/s
//Calculating the power of the motor required
P=E/1000 //Power of the motor required, kW
//Mass of the flywheel required:
//Calculating the time required to punch a hole in a 32 mm thick plate
t32=10/(2*s)*t //Time required to punch a hole in 32 mm thick plate, seconds
//Calculating the energy supplied by the motor in t32 seconds
E2=E*t32 //N-m
//Calculating the energy to be supplied by the flywheel during punching
deltaE=E1-E2 //N-m
//Calculating the coefficient of fluctuation of speed
CS=3/100
//Calculating the mass of the flywheel required
m=round(deltaE/(v^2*CS)) //kg
//Results:
printf("\n\n Power of the motor required, P = %.3f kW.\n\n",P)
printf(" Mass of the flywheel required, m = %d kg.\n\n",m)