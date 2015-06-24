//To find mass of the flywheel
clc
//Given:
N=600 //rpm
R=0.5 //m
//Solution:
//Refer Fig. 16.7
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //rad/s
//Calculating the coefficient of fluctuation of speed
CS=3/100
//Calculating the value of 1 mm^2 on turning moment diagram
c=600*%pi/60 //Value of 1 mm^2 on turning moment diagram, N-m
//Calculating the maximum fluctuation of energy
//From the turning moment diagram, maximum fluctuation = E+52, and minimum fluctuation = E-120
deltaE=(52-(-120))*c //N-m
//Calculating the mass of the flywheel
m=deltaE/(R^2*omega^2*CS) //kg
//Results:
printf("\n\n Mass of the flywheel, m = %d kg.\n\n",m)