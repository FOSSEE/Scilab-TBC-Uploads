//To find weight of flywheel
clc
//Given:
P=300*1000 //W
N=90 //rpm
CE=0.1
k=2 //m
//Solution:
//Calculating the mean angular speed
omega=2*%pi*N/60 //rad/s
//Calculating the coefficient of fluctuation of speed
CS=1/100
//Calculating the work done per cycle
WD=P*60/N //Work done per cycle, N-m
//Calculating the maximum fluctuation of energy
deltaE=WD*CE //N-m
//Calculating the mass of the flywheel
m=deltaE/(k^2*omega^2*CS) //kg
//Results:
printf("\n\n Mass of the flywheel, m = %d kg.\n\n",m)