//To Find the Radius of Gyration
clc
//Given:
m=1.5 //kg
l=1.25,x=120*10^-3,y=x //m
//Solution:
//Calculating the Frequency of Oscillation
n=20/40 //Hz
//Calculating the Radius of Gyration of the Connecting Rod
kG=1/(2*%pi*n)*sqrt(9.81*x*y/l) //m
//Calculating the Moment of Inertia of the Connecting Rod
I=m*kG^2 //kg-m^2
//Results:
printf("\n\n The Radius of Gyration, kG = %d mm.\n",kG*1000)
printf(" The Mass Moment of Inertia, I = %.3f kg-m^2.\n\n",I)