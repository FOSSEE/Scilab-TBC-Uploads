//To find the torque
clc
//Given:
d=1.5,r=d/2,d1=1,kM=90/1000,kI=225/1000,kD=600/1000,kP=450/1000 //m
NM=900,N1=275,ND=50 //rpm
mM=200,mI=375,mD=2250,mP=200,m1=1150,m2=650 //kg
FI=150, FD=1125, FP=150 //N-m
F1=500,F2=350 //N
a=0.9 //m/s^2
//Solution:
//Calculating the speed of guide pulley
NP=ND*d/d1 //rpm
//Calculating the gear ratio for intermediate gear and motor
G1=N1/NM
//Calculating the gear ratio for drum and motor
G2=ND/NM
//Calculating the gear ratio for the guide pulley and motor
G3=NP/NM
//Calculating the mass moment of inertia of the motor
IM=mM*kM^2 //kg-m^2
//Calculating the mass moment of inertia of the intermediate gear
II=mI*kI^2 //kg-m^2
//Calculating the mass moment of inertia of the drum and shaft
ID=mD*kD^2 //kg-m^2
//Calculating the mass moment of inertia of the guide pulley
IP=mP*kP^2 //kg-m^2
//Calculating the angular acceleration of the drum
alphaD=a/r //rad/s^2
//Calculating the angular acceleration of the motor
alphaM=alphaD*NM/ND //rad/s^2
//Calculating the equivalent mass moment of inertia of the system
I=IM+G1^2*II+G2^2*ID+2*G3^2*IP //kg-m^2
//Calculating the torque at motor to accelerate the system
T1=I*alphaM //N-m
//Calculating the torque at motor to overcome friction at intermediate gear, drum and two guide pulleys
T2=G1*FI+G2*FD+2*G3*FP //N-m
//Calculating the tension in the rising rope between the pulley and drum
Q1=m1*9.81+m1*a+F1 //N
//Calculating the tension in the falling rope between the pulley and drum
Q2=m2*9.81-m2*a-F2 //N
//Calculating the torque at drum
TD=(Q1-Q2)*r //N-m
//Calculating the torque at motor to raise and lower cages and ropes and to overcome frictional resistance
T3=G2*TD //N-m
//Calculating the total motor torque required
T=T1+T2+T3 //N-m
//Results:
printf("\n\n The total motor torque required, T = %.1f N-m.\n\n",T)