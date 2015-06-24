//To find inclination of track arm
clc
//Given:
c=1.2,b=2.7 //m
//Solution:
//Calculating the inclination of the track arm to the longitudinal axis
alpha=atan(c/(2*b))*180/%pi //degrees
//Results:
printf("\n\n Inclination of the track arm to the longitudinal axis, alpha = %.1f degrees.\n\n",alpha)