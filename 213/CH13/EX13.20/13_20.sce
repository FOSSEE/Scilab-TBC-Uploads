//To find teeth and torque
clc
//Given:
Ts=100 //Torque on the sun wheel, N-m
r=5 //Ratio of speeds of gear S to C, NS/NC
//Refer Fig. 13.27 and Table 13.22
//Number of teeth on different wheels:
//Calculating the values of x and y
y=1
x=5-y
//Calculating the number of teeth on wheel E
TS=16
TE=4*TS
//Calculating the number of teeth on wheel P
TP=(TE-TS)/2
//Torque necessary to keep the internal gear stationary:
Tc=Ts*r //Torque on CN-m
//Caluclating the torque necessary to keep the internal gear stationary
Ti=Tc-Ts //Torque necessary to keep the internal gear stationary, N-m
//Results:
printf("\n\n Number of teeth on different wheels, TE = %d.\n\n",TE)
printf(" Torque necessary to keep the internal gear stationary = %d N-m.\n\n",Ti)