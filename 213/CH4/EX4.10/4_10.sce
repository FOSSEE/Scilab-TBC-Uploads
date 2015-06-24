//To Find the Radius of Gyration
clc
//Given:
l=2.5,r=250*10^-3 //m
//Solution:
//Calculating the Frequency of Oscillation
n=50/170 //Hz
//Calculating the Radius of Gyration of the Wheel
kG=r/(2*%pi*n)*sqrt(9.81/l) //m
//Results:
printf("\n\n The Radius of Gyration, kG = %d mm.\n\n",kG*10^3)