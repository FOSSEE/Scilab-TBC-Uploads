//To find power and mass
clc
//Given:
N1=225, N2=200 //rpm
k=0.5 //m
E1=15*1000 //N-m
HolePunched=720 //per hour
//Solution:
//Power of the motor:
//Calculating the total energy required per second
E=E1*HolePunched/3600 //N-m/s
//Calculating the power of the motor
P=E/1000 //kW
//Minimum mass of the flywheel:
//Calculating the energy supplied by the motor in 2 seconds
E2=E*2 //N-m
//Calculating the energy supplied by the flywheel during punching
deltaE=E1-E2 //N-m
//Calculating the mean speed of the flywheel
N=(N1+N2)/2 //rpm
//Calculating the minimum mass of the flywheel
m=round(deltaE*900/(%pi^2*k^2*N*(N1-N2))) //kg
//Results:
printf("\n\n Power of the motor, P = %d kW.\n\n",P)
printf(" Minimum mass of the flywheel, m = %d kg.\n\n",m)