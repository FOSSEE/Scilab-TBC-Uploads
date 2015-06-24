//To find moment of inertia
clc
//Given:
P=20*1000 //W
N=300 //rpm
//Solution:
//Refer Fig. 16.11
//Calculating the angular speed of the crank
omega=2*%pi*N/60 //ra/s
//Calculating the coefficient of fluctuation of speed
CS=4/100
//Calculating the number of working strokes per cycle for a four stroke engine
n=N/2
//Calculating the work done per cycle
WD=P*60/n //Work done per cycle, N-m
//Calculating the work done during expansion cycle
WE=WD*3/2 //N-m
//Calculating the maximum turning moment
Tmax=WE*2/%pi //N-m
//Calculating the mean turning moment
Tmean=WD/(4*%pi) //N-m
//Calculating the excess turning moment
Texcess=Tmax-Tmean //N-m
//Calculating the value of DE
DE=Texcess/Tmax*%pi //rad
//Calculating the maximum fluctuation of energy
deltaE=(1/2*DE*Texcess) //N-m
//Calculating the moment of inertia of the flywheel
I=deltaE/(omega^2*CS) //kg-m^2
//Results:
printf("\n\n Moment of inertia of the flywheel, I = %.1f kg-m^2.\n\n",I)