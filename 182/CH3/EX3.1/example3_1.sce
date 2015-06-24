// To find the Torque on the coil
// example3-1 in page 37
clc;
//Given data
N=100;//Number of turns
B=0.2;//Magnetic flux density of 0.2 tesla
D=0.01; l=0.015; //diameter and length of the coil in meters
I=.001;// current=1 mA
//calculation
T=B*l*I*N*D;// torque in N-m
printf("Torque=%f N-m",T);
//result
//Torque=0.000003 N-m