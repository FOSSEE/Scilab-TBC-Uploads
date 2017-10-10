clc;
clear;
lambda1=5016*10^-8 //wavelength in cm
lambda2=5048*10^-8 //wavelength in cm
N=15000 //lines per inch
k=2

//calculation 
e=2.54/N //in cm
theta1_degrees= floor(asin((2*lambda1)/e)*(180/%pi)) //degrees part of angle
theta1_minutes=ceil((asin((2*lambda1)/e)*(180/%pi)-theta1_degrees)*60) //minutes part of angle
theta2_degrees = floor(asin((2*lambda2)/e)*(180/%pi)) //degrees part of angle
theta2_minutes=ceil((asin((2*lambda2)/e)*(180/%pi)-theta2_degrees)*60) //minutes part of angle


printf("Angle of separation = %d degrees %d minutes",(theta2_degrees-theta1_degrees),(theta2_minutes-theta1_minutes))
