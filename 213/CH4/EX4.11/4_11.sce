//To Find the Mass Moment of Inertia
clc
//Given:
m1=5.5,m2=1.5 //kg
l=1.25,r=125*10^-3 //m
//Solution:
//Calculating the Frequency of Oscillation
n=10/30 //Hz
//Calculating the Radius of Gyration About an Axis Through the c.g.
kG=r/(2*%pi*n)*sqrt(9.81/l) //m
//Calculating the Mass Moment of Inertia About an Axis Through its c.g.
m=m1+m2 //Total Mass, kg
I=m*kG^2 //kg-m^2
//Results:
printf("\n\n The Mass Moment of Inertia About an Axis Through its c.g., I = %.3f kg-m^2.\n\n",I)